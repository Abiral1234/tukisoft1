part of 'sign_in_bloc.dart';

abstract class SignInEvent {}

class SignInTextChangedEvent extends SignInEvent {
  final String emailValue;
  final String passwordValue;
  SignInTextChangedEvent(this.emailValue, this.passwordValue);
}

class SignInSubmittedEvent extends SignInEvent {
  final String email;
  final String password;
  SignInSubmittedEvent(this.email, this.password);
}

class SignInInitialEvent extends SignInEvent {
  SignInInitialEvent();
}

class SignInValidEvent extends SignInEvent {
  SignInValidEvent();
}

class SignInFailedEvent extends SignInEvent {
  final String message;
  SignInFailedEvent(this.message);
}

class NavigateToPageEvent extends SignInEvent {
  final String pageName;

  NavigateToPageEvent(this.pageName);
}
