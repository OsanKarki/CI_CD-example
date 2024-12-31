import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/application/note/form/note_form_bloc.dart';
import 'package:note_app/injection.dart';
import 'package:note_app/presentation/form/widget/note_form_view.dart';

import '../../application/note/note_fetch_bloc.dart';

@RoutePage()
class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<NoteFormBloc>(),
          ),
          BlocProvider(create: (context) => getIt<NoteFetchBloc>()),
        ],
        child: NoteFormView(),
      ),
    );
  }
}
