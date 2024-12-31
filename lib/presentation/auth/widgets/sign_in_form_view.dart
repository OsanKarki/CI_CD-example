import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/application/auth/auth_form/auth_form_bloc.dart';
import 'package:note_app/core/app_routes.gr.dart';
import 'package:note_app/core/snackbar.dart';

class SignInFormView extends StatelessWidget {
  const SignInFormView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthFormBloc, AuthFormState>(
      listenWhen: (previous, current) =>
          previous.failureOrSuccessOption != current.failureOrSuccessOption,
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (l) {},
              (r) {
                context.router.pushAndPopUntil(const HomeRoute(),
                    predicate: (_) {
                  return false;
                });
                AppSnackBar.showSuccess(context: context, message: "success");
              },
            );
          },
        );
        // TODO: implement listener
      },
      buildWhen: (previous, current) =>
          previous.isSubmitting != current.isSubmitting,
      builder: (context, state) {
        return Column(
          children: [
            TextFormField(
              onChanged: (value) {
                context
                    .read<AuthFormBloc>()
                    .add(AuthFormEvent.emailChanged(value));
              },
              decoration: const InputDecoration(label: Text("Email")),
            ),
            TextFormField(
              onChanged: (value) {
                context
                    .read<AuthFormBloc>()
                    .add(AuthFormEvent.passwordChanged(value));
              },
              decoration: const InputDecoration(
                label: Text("Password"),
              ),
              obscureText: true,
            ),
            ElevatedButton(
                onPressed: () {
                  context
                      .read<AuthFormBloc>()
                      .add(const AuthFormEvent.signInButtonPressed());
                },
                child: const Text("SignIn")),
            state.isSubmitting
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () {
                      context
                          .read<AuthFormBloc>()
                          .add(const AuthFormEvent.registerButtonPressed());
                    },
                    child: const Text("Register"))
          ],
        );
      },
    );
  }
}
