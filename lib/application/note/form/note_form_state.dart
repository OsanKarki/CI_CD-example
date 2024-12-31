part of 'note_form_bloc.dart';

@freezed
class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    required bool isSubmitting,
    required NoteModel noteFormParams,
    required Option<Either<NetworkExceptions, String>> failureOrSuccessOption,
  }) = _NoteFormState;

  factory NoteFormState.initial() => NoteFormState(
        isSubmitting: false,
        noteFormParams: NoteModel.initial(),
        failureOrSuccessOption: const None(),
      );
}
