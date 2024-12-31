import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:note_app/application/note/note_fetch_bloc.dart';
import 'package:note_app/core/app_routes.gr.dart';
import 'package:note_app/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/presentation/form/form_page.dart';
import 'package:note_app/presentation/home/widget/note_view.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.blue,
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<NoteFetchBloc>()..add(const NoteFetchEvent.fetchNotes()),
        child: const NoteView(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.router.push(const FormRoute());
        },
      ),
    );
  }
}
