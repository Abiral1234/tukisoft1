part of 'sign_in_bloc.dart';

abstract class SignInState {}

class SignInInitialState extends SignInState {}

class SignInInvalidState extends SignInState {}

class SignInValidState extends SignInState {}

class SignInErrorState extends SignInState {
  final String errorMessage;
  SignInErrorState(this.errorMessage);
}

class SignInLoadingState extends SignInState {}

class SignInFailedState extends SignInState {
  final String failedMessage;
  SignInFailedState(this.failedMessage);
}

class SignInSuccessState extends SignInState {
  final String successMessage;
  SignInSuccessState(this.successMessage);
}
