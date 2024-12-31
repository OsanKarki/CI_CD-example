import 'package:note_app/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure value;

  UnexpectedValueError(this.value);

  @override
  String toString() {

    return 'Value failure occurred at an unrecoverable point. Failure is $value';
  }
}

