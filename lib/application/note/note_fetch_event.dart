part of 'note_fetch_bloc.dart';

@freezed
class NoteFetchEvent with _$NoteFetchEvent {
  const factory NoteFetchEvent.fetchNotes() = _FetchNotes;
}
