import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required String invalidValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.invalidPassword({
    required String invalidValue,
  }) = InvalidPassword<T>;
}
