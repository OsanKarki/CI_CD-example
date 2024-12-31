import 'package:dartz/dartz.dart';

import 'errors.dart';
import 'failures.dart';

abstract class ValueObject<T> {
  Either<ValueFailure, T> get value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other) || other.runtimeType != runtimeType) {
      return true;
    }
    return false;
  }

 T getOrCrash() => value.fold(
        (l) => throw UnexpectedValueError(l),
        (r) => r,
      );

  bool isValid()=>value.isRight();

  @override
  // TODO: implement hashCode
  int get hashCode => value.hashCode;
}
