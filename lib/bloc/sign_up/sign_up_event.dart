part of 'sign_up_bloc.dart';

abstract class SignUpEvent {}

class SignUpTextChangedEvent extends SignUpEvent {
  final String firstNameValue;
  final String secondNameValue;
  final String emailValue;
  final String passwordValue;
  final String confirmPasswordValue;
  SignUpTextChangedEvent(this.firstNameValue, this.secondNameValue,
      this.emailValue, this.passwordValue, this.confirmPasswordValue);
}

class SignUpSubmittedEvent extends SignUpEvent {
  final String firstName;
  final String secondName;
  final String email;
  final String password;
  final String confirmPassword;
  SignUpSubmittedEvent(this.firstName, this.secondName, this.email,
      this.password, this.confirmPassword);
}
