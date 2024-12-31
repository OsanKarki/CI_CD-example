part of 'note_fetch_bloc.dart';

@freezed
class NoteFetchState<T> with _$NoteFetchState {
  const factory NoteFetchState.initial() = _Initial;

  const factory NoteFetchState.loading() = _Loading;

  const factory NoteFetchState.success(T data) = _Success;

  const factory NoteFetchState.failure(NetworkExceptions failure) = _Failure;
}
