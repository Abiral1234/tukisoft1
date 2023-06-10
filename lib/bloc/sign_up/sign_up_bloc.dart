import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:equatable/equatable.dart';

import '../../repositories/signup_repository.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitialState()) {
    on<SignUpTextChangedEvent>((event, emit) {
      if (event.firstNameValue == '' || event.secondNameValue == '') {
        emit(SignUpErrorState("Please enter your full name"));
      } else if (EmailValidator.validate(event.emailValue) == false) {
        emit(SignUpErrorState("Please enter a valid email address"));
      } else if (event.passwordValue.length < 8) {
        emit(SignUpErrorState("Please enter a valid password"));
      } else if (event.passwordValue != event.confirmPasswordValue) {
        emit(SignUpErrorState("Password doesnt match"));
      } else {
        emit(SignUpValidState());
      }
    });
    on<SignUpSubmittedEvent>((event, emit) async {
      emit(SignUpLoadingState());
      SignUpRepository signUpRepository = SignUpRepository();
      SignUpResponse? signUpResponse = await signUpRepository.signUp(
          event.firstName,
          event.secondName,
          event.email,
          event.password,
          event.confirmPassword);
      var code = signUpResponse!.statusCode;
      var respondbody = signUpResponse.body;
      print("The new response is");
      print(code);
      print(respondbody);
      Map<String, dynamic> parsedData = jsonDecode(respondbody);
      print(parsedData['status']);
      if (code == 200 && parsedData['status'] == true) {
        print("Sucesssssss");
        emit(SignUpSuccessState());
      } else {
        emit(SignUpErrorState(parsedData['message']));
      }
    });
  }
}
