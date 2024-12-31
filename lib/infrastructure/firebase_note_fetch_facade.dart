import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app/core/network_exceptions.dart';
import 'package:note_app/domain/note/i_note_facade.dart';
import 'package:note_app/domain/note/model/note_fetch_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

@LazySingleton(as: INoteFacade)
class FireBaseNoteFetchFacade implements INoteFacade {
  final FirebaseFirestore firebaseFireStore;

  FireBaseNoteFetchFacade(this.firebaseFireStore);

  @override
  Future<Either<NetworkExceptions, List<NoteModel>>> fetchNotes() async {
    try {
      final snapShot = await firebaseFireStore.collection("notes").get();
      final notes =
          snapShot.docs.map((e) => NoteModel.fromJson(e.data())).toList();

      return right(notes);
    } catch (e) {
      if (e is SocketException) {
        return left(const NetworkExceptions.noInternetConnection());
      } else {
        return left(const NetworkExceptions.unexpectedError());
      }
    }
  }
}
