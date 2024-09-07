import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serenity/domain/auth/auth_failure.dart';
import 'package:serenity/domain/auth/i_auth_facade.dart';
import 'package:serenity/domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) {});
  }

  final IAuthFacade _authFacade;
}
