import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app/domain/form/i_note_add_form_facade.dart';
import 'package:note_app/domain/note/model/note_fetch_model.dart';
import '../../../core/network_exceptions.dart';

part 'note_form_event.dart';

part 'note_form_state.dart';

part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteAddFormFacade _addFormFacade;

  NoteFormBloc(this._addFormFacade) : super(NoteFormState.initial()) {
    on<NoteFormEvent>((event, emit) async {
      await event.map(titleChanged: (e) {
        emit(state.copyWith(
            noteFormParams: state.noteFormParams.copyWith(title: e.titleStr)));
      }, descriptionChanged: (e) {
        emit(state.copyWith(
            noteFormParams:
                state.noteFormParams.copyWith(description: e.descriptionStr)));
      }, dateTimeChanged: (e) {
        emit(state.copyWith(
            noteFormParams: state.noteFormParams.copyWith(time: e.dateTime)));
      }, addNoteButtonPressed: (e) async {
        emit(state.copyWith(isSubmitting: true));
        final failureOrSuccess =
            await _addFormFacade.addNote(state.noteFormParams);
        emit(state.copyWith(
            isSubmitting: false,
            failureOrSuccessOption: some(failureOrSuccess)));
      });
    });
  }
}
