import 'package:dartz/dartz.dart';
import 'package:note_app/core/network_exceptions.dart';
import 'package:note_app/domain/note/model/note_fetch_model.dart';

abstract class INoteAddFormFacade {
  Future<Either<NetworkExceptions, String>> addNote(NoteModel noteModel);
}
