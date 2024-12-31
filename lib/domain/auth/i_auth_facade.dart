import 'package:dartz/dartz.dart';
import 'package:note_app/domain/auth/value_objects.dart';

import 'auth_failures.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword(
      EmailAddress emailAddress, Password password);

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      EmailAddress emailAddress, Password password);
}
