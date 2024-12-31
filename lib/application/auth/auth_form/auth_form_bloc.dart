import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app/domain/auth/auth_failures.dart';
import 'package:note_app/domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';
part 'auth_form_event.dart';
part 'auth_form_state.dart';
part 'auth_form_bloc.freezed.dart';

@injectable
class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState> {
  final IAuthFacade _authFacade;

  AuthFormBloc(this._authFacade) : super(AuthFormState.initial()) {
    on<AuthFormEvent>((event, emit)async {
    await  event.map(
        emailChanged: (e) {
          emit(state.copyWith(emailAddress: EmailAddress(e.emailStr)));
        },
        passwordChanged: (e) {
          emit(state.copyWith(password: Password(e.passwordStr)));
        },
        signInButtonPressed: (e) async {
          final isEmailValid = state.emailAddress.isValid();
          final isPasswordValid = state.password.isValid();

          if (isEmailValid && isPasswordValid) {
            emit(state.copyWith(isSubmitting: true));
            final failureOrSuccess = await _authFacade
                .loginWithEmailAndPassword(state.emailAddress, state.password);
            emit(state.copyWith(
                isSubmitting: false,
                failureOrSuccessOption: some(failureOrSuccess)));
          }
        },
        registerButtonPressed: (e) async {
          final isEmailValid = state.emailAddress.isValid();
          final isPasswordValid = state.password.isValid();
          if (isEmailValid && isPasswordValid) {
            emit(state.copyWith(isSubmitting: true));

            final failureOrSuccess =
                await _authFacade.registerWithEmailAndPassword(
                    state.emailAddress, state.password);
            emit(state.copyWith(
                isSubmitting: false,
                failureOrSuccessOption: some(failureOrSuccess)));
          }
        },
      );
    });
  }
}
