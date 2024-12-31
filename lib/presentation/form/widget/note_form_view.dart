import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/application/note/form/note_form_bloc.dart';
import 'package:note_app/application/note/note_fetch_bloc.dart';
import 'package:note_app/core/app_routes.dart';

class NoteFormView extends StatelessWidget {
  const NoteFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteFormBloc, NoteFormState>(
      listenWhen: (previous, current) =>
          previous.failureOrSuccessOption != current.failureOrSuccessOption,
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (l) {},
              (r) {
                context.router.maybePop();
                context
                    .read<NoteFetchBloc>()
                    .add(const NoteFetchEvent.fetchNotes());
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Column(
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: "title"),
              onChanged: (value) {
                context
                    .read<NoteFormBloc>()
                    .add(NoteFormEvent.titleChanged(value));
              },
            ),
            TextFormField(
                decoration: InputDecoration(hintText: "description"),
                onChanged: (value) {
                  context
                      .read<NoteFormBloc>()
                      .add(NoteFormEvent.descriptionChanged(value));
                }),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  context
                      .read<NoteFormBloc>()
                      .add(NoteFormEvent.addNoteButtonPressed());
                },
                child: Text("Add Note"))
          ],
        );
      },
    );
  }
}
