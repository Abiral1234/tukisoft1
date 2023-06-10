import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:equatable/equatable.dart';

import '../../../ListPage.dart';
import '../../../overview.dart';
import '../../../repositories/login_repository.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final BuildContext context;
  SignInBloc(this.context) : super(SignInInitialState()) {
    on<SignInTextChangedEvent>((event, emit) {
      if (EmailValidator.validate(event.emailValue) == false) {
        emit(SignInErrorState("Please enter a valid email address"));
      } else if (event.passwordValue.length < 8) {
        emit(SignInErrorState("Please enter a valid password"));
      } else {
        emit(SignInValidState());
      }
    });
    on<SignInSubmittedEvent>((event, emit) async {
      emit(SignInLoadingState());
      // LoginRepository loginRepository = LoginRepository();
      // LoginResponse? loginResponse =
      //     await loginRepository.sendLogin(event.email, event.password);
      // var code = loginResponse!.statusCode;
      // var respondbody = loginResponse.body;
      // print("The new response is");
      // print(code);
      // print(respondbody);
      // Map<String, dynamic> parsedData = jsonDecode(respondbody);
      // print(parsedData['status']);
      // if (code == 200 && parsedData['status'] == true) {
      //   print("hello");

      //   emit(SignInSuccessState("Sign in Suceeded"));

      //   // Get.to(ListPage());
      // } else {
      //   emit(SignInFailedState(parsedData['message']));
      // }
      // SignInFailedEvent();
    });
    on<SignInFailedEvent>((event, emit) async {
      emit(SignInFailedState(event.message));
    });
    on<SignInInitialEvent>((event, emit) async {
      emit(SignInInitialState());
    });
    on<SignInValidEvent>((event, emit) async {
      emit(SignInValidState());
    });
    //    @override
    // Stream<SignInState> mapEventToState(SignInEvent event) async* {
    //   if (event is NavigateToPageEvent) {
    //     // Perform the navigation action
    //     Navigator.pushNamed(context, event.pageName);
    //   }
    // }
  }
}
