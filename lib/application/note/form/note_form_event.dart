part of 'note_form_bloc.dart';

@freezed
class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.titleChanged(String titleStr) = _TitleChanged;

  const factory NoteFormEvent.descriptionChanged(String descriptionStr) =
      _DescriptionChanged;

  const factory NoteFormEvent.dateTimeChanged(DateTime dateTime) =
      _DateTimeChanged;

  const factory NoteFormEvent.addNoteButtonPressed() = _AddNoteButtonPressed;
}
