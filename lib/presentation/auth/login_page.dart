import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:note_app/application/auth/auth_form/auth_form_bloc.dart';
import 'package:note_app/injection.dart';
import 'package:note_app/presentation/auth/widgets/sign_in_form_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: BlocProvider(
        create: (context) => getIt<AuthFormBloc>(),
        child: const SignInFormView(),
      ),
    );
  }
}
