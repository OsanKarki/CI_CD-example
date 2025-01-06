import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/application/note/note_fetch_bloc.dart';
import 'package:note_app/domain/note/model/note_fetch_model.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFetchBloc, NoteFetchState>(
      builder: (context, state) {
        return state.map(
          initial: (value) => const SizedBox(),
          loading: (value) => const CircularProgressIndicator(),
          success: (value) {
            final List<NoteModel> listNote = value.data;
            return Column(
              children: List.generate(
                listNote.length,
                (index) {
                  final note = listNote[index];
                  return Column(
                    children: [
                      Text(note.title),
                      Text(note.description),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  );
                },
              ),
            );
          },
          failure: (value) => Text("Error"),
        );
      },
    );
  }
}
