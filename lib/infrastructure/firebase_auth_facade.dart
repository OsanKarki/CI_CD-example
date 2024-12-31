import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app/domain/auth/i_auth_facade.dart';
import 'package:note_app/domain/auth/value_objects.dart';
import '../domain/auth/auth_failures.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthFacade(this._firebaseAuth);

  @override
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword(
      EmailAddress emailAddress, Password password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddress.getOrCrash(), password: password.getOrCrash());
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "wrong-password" || e.code == "user-not-found") {
        return left(const AuthFailure.invalidCredentials());
      } else {
        return left(const AuthFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      EmailAddress emailAddress, Password password) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddress.getOrCrash(), password: password.getOrCrash());
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.unexpected());
      }
    }
  }

  Future<Either<AuthFailure, bool>> checkLoginStatus() async {
    try {
      final userId = _firebaseAuth.authStateChanges();

      return right(userId != null);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.unexpected());
      }
    }
  }
}
