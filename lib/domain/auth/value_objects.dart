import '../../core/errors.dart';
import '../../core/failures.dart';
import '../../core/validators.dart';
import 'package:dartz/dartz.dart';

import '../../core/value_object.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  EmailAddress._(this.value);


  factory EmailAddress(String input) =>
      EmailAddress._(validateEmailAddress(input));
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  Password._(this.value);

  factory Password(String input) => Password._(validatePassword(input));
}
