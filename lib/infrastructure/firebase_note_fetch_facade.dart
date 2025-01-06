import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app/core/network_exceptions.dart';
import 'package:note_app/domain/note/i_note_facade.dart';
import 'package:note_app/domain/note/model/note_fetch_model.dart';

import '../core/hive_service.dart';
import '../core/network_info.dart'; // Import NetworkInfo

@LazySingleton(as: INoteFacade)
class FireBaseNoteFetchFacade implements INoteFacade {
  final FirebaseFirestore firebaseFireStore;
  final HiveService hiveService;
  final NetworkInfo networkInfo; // Inject NetworkInfo

  FireBaseNoteFetchFacade(
    this.firebaseFireStore,
    this.hiveService,
    this.networkInfo, // Add NetworkInfo to constructor
  );

  @override
  Future<Either<NetworkExceptions, List<NoteModel>>> fetchNotes() async {
    if (await networkInfo.isConnected) {
      try {
        final snapShot = await firebaseFireStore.collection("notes").get();
        final notes =
            snapShot.docs.map((e) => NoteModel.fromJson(e.data())).toList();

        for (var note in notes) {
          await hiveService.addData('noteBox', "add_notes", note);
        }

        return right(notes);
      } catch (e) {
        return left(const NetworkExceptions.unexpectedError());
      }
    } else {
      // If no internet, check if cache exists
      List<NoteModel> cachedNotes =
          await hiveService.getAllData<NoteModel>('noteBox');

      if (cachedNotes.isEmpty) {
        // If cache is empty, return a network error indicating no internet and no cached data
        return left(const NetworkExceptions.noInternetConnection());
      }

      return right(cachedNotes);
    }
  }
}
