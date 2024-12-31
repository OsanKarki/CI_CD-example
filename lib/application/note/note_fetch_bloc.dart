import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app/core/network_exceptions.dart';
import 'package:note_app/domain/note/i_note_facade.dart';
part 'note_fetch_event.dart';

part 'note_fetch_state.dart';

part 'note_fetch_bloc.freezed.dart';

@injectable
class NoteFetchBloc extends Bloc<NoteFetchEvent, NoteFetchState> {
  final INoteFacade _noteFacade;

  NoteFetchBloc(this._noteFacade) : super(const NoteFetchState.initial()) {
    on<NoteFetchEvent>((event, emit) async {
      await event.map(
        fetchNotes: (value) async {
          emit(const NoteFetchState.loading());
          final failureOrSuccess = await _noteFacade.fetchNotes();
          emit(failureOrSuccess.fold(
            (failure) => NoteFetchState.failure(failure),
            (notes) => NoteFetchState.success(notes),
          ));
        },
      );
    });
  }
}
