part of 'auth_form_bloc.dart';

@freezed
class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    required bool isSubmitting,
    required EmailAddress emailAddress,
    required Password password,
    required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
  }) = _AuthFormState;

  factory AuthFormState.initial() => AuthFormState(
      isSubmitting: false,
      emailAddress: EmailAddress(""),
      password: Password(""),
      failureOrSuccessOption: none());
}
