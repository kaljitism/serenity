import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serenity/domain/core/failures.dart';
import 'package:serenity/domain/core/value_objects.dart';
import 'package:serenity/domain/core/value_validators.dart';

/// Represents Email
@immutable
class EmailAddress extends ValueObject<String> {
  factory EmailAddress(String email) {
    return EmailAddress._(value: validateEmailAddress(email));
  }

  const EmailAddress._({required this.value});

  @override
  final Either<ValueFailure<String>, String> value;
}

/// Represents Password
@immutable
class Password extends ValueObject<String> {
  factory Password(String password) {
    return Password._(value: validatePassword(password));
  }

  const Password._({required this.value});

  @override
  final Either<ValueFailure<String>, String> value;
}
