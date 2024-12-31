import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<FirebaseAuth> get firebaseAuth async => FirebaseAuth.instance;

  @preResolve
  Future<FirebaseFirestore> get firebaseFireStore async =>
      FirebaseFirestore.instance;
}
