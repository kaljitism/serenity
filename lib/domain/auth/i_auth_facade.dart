import 'package:dartz/dartz.dart';
import 'package:serenity/domain/auth/auth_failure.dart';
import 'package:serenity/domain/auth/value_objects.dart';

/// Authentication Interface for -
/// 1. Register in with Email and Password
/// 2. Sign in with Email and Password
/// 3. Sign in with Google
abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
