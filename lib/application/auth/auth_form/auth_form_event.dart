part of 'auth_form_bloc.dart';

@freezed
class AuthFormEvent with _$AuthFormEvent {
  const factory AuthFormEvent.emailChanged(String emailStr) = _EmailChanged;

  const factory AuthFormEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;

  const factory AuthFormEvent.signInButtonPressed() = _SignInButtonPressed;

  const factory AuthFormEvent.registerButtonPressed() = _RegisterButtonPressed;
}

