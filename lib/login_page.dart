import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:my_app/ListPage.dart';
import 'package:my_app/amount_received.dart';
import 'package:my_app/bloc/internet/bloc/internet_bloc_bloc.dart';
import 'package:my_app/forgotpassword.dart';
import 'package:my_app/overview.dart';
import 'package:my_app/repositories/login_repository.dart';
import 'package:my_app/sign_up.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/sign_in/bloc/sign_in_bloc.dart';
import 'bloc/sign_up/sign_up_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // late LoginBloc _loginBloc;

  @override
  void initState() {
    // _loginBloc = LoginBloc();
    super.initState();
  }

  @override
  void dispose() {
    // _loginBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = new TextEditingController();

    TextEditingController passwordController = new TextEditingController();
    return BlocProvider(
      create: (context) => InternetBlocBloc(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 75),
                  Container(
                    padding: const EdgeInsets.all(2),
                    height: 80,
                    width: 220,
                    child: Image.asset('asset/images/dayimage.png'),
                  ),
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      color: Color.fromRGBO(49, 26, 187, 1),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 330,
                    child: TextField(
                      controller: emailController,
                      onChanged: (value) {
                        BlocProvider.of<SignInBloc>(context).add(
                            SignInTextChangedEvent(
                                emailController.text, passwordController.text));
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter Email Address',
                        border: OutlineInputBorder(),
                        icon: Icon(
                          Icons.mark_email_unread,
                          color: Color.fromRGBO(49, 26, 187, 1),
                        ),
                      ),
                      obscureText: false,
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 330,
                    child: TextField(
                      controller: passwordController,
                      onChanged: (value) {
                        BlocProvider.of<SignInBloc>(context).add(
                            SignInTextChangedEvent(
                                emailController.text, passwordController.text));
                      },
                      // cursorHeight: 12,
                      decoration: InputDecoration(
                          hintText: '*************',
                          border: OutlineInputBorder(),
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromRGBO(49, 26, 187, 1),
                          )),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 15),
                  BlocBuilder<SignInBloc, SignInState>(
                    builder: (context, state) {
                      if (state is SignInErrorState) {
                        return Text(
                          state.errorMessage,
                          style: TextStyle(color: Colors.red),
                        );
                      } else if (state is SignInFailedState) {
                        return Text(
                          state.failedMessage,
                          style: TextStyle(color: Colors.red),
                        );
                      }
                      if (state is SignInSuccessState) {
                        return Text(
                          state.successMessage,
                          style: TextStyle(color: Colors.green),
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                  BlocBuilder<SignInBloc, SignInState>(
                    builder: (context, state) {
                      if (state is SignInLoadingState) {
                        return CircularProgressIndicator();
                      }
                      return SizedBox(
                        height: 45,
                        width: 330,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (state is SignInValidState) {
                              BlocProvider.of<SignInBloc>(context).add(
                                  SignInSubmittedEvent(emailController.text,
                                      passwordController.text));
                              LoginRepository loginRepository =
                                  LoginRepository();
                              LoginResponse? loginResponse =
                                  await loginRepository.sendLogin(
                                      emailController.text,
                                      passwordController.text);
                              var code = loginResponse!.statusCode;
                              var respondbody = loginResponse.body;
                              print("The new response is");
                              print(code);
                              print(respondbody);
                              Map<String, dynamic> parsedData =
                                  jsonDecode(respondbody);
                              print(parsedData['status']);
                              if (code == 200 && parsedData['status'] == true) {
                                print("hello");
                                BlocProvider.of<SignInBloc>(context)
                                    .add(SignInValidEvent());
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return Overview();
                                  }),
                                );
                                // Get.to(ListPage());
                              } else {
                                BlocProvider.of<SignInBloc>(context).add(
                                    SignInFailedEvent(parsedData['message']));
                              }
                            } else
                              () {
                                print("Something went wrong");
                              };
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0,
                            backgroundColor: state is SignInInvalidState
                                ? Colors.grey.shade600
                                : Color.fromRGBO(49, 26, 187, 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Log in',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.restart_alt),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const Forgetpassword();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: const Text(
                      'Forget Password?',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(49, 26, 187, 1),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '------------- OR -------------',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(49, 26, 187, 1),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: 290,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const AmountReceived();
                            },
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(25, 4, 25, 4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        side: const BorderSide(
                          width: 1,
                          color: Color.fromRGBO(49, 26, 187, 1),
                        ),
                        backgroundColor: Colors.white,
                        disabledBackgroundColor:
                            const Color.fromRGBO(49, 26, 187, 1),
                        disabledForegroundColor:
                            const Color.fromRGBO(49, 26, 187, 1),
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'asset/images/google.png',
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 16),
                          const Text(
                            'Login with Google',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(49, 26, 187, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) {
                          return BlocProvider(
                            create: (context) => SignUpBloc(),
                            child: Signup(),
                          );
                        },
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                    ),
                    child: RichText(
                      text: const TextSpan(
                          text: "Don't Have an Account?",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(49, 26, 187, 1),
                            decoration: TextDecoration.underline,
                            fontSize: 20,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Sign Up",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Container(
                    height: 52,
                    width: 292,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(49, 26, 187, 1),
                      border: Border.all(
                        width: 3,
                        color: const Color.fromRGBO(49, 26, 187, 1),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.asset(
                            'asset/images/nonet.png',
                            height: 30,
                            width: 30,
                          ),
                        ),
                        BlocBuilder<InternetBlocBloc, InternetBlocState>(
                          builder: (context, state) {
                            if (state is InternetGainedState) {
                              return Text(
                                " Intenet Connected",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                              );
                            } else if (state is InternetLostState) {
                              return Text(
                                " No internet",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                              );
                            } else {
                              return Text(
                                " Loading",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//  Future<List?> logInPost(String email, String password) async {
//     try {
//       print(email);
//       print(password);
//       final url = Uri.parse(
//           'https://www.daykhata.helpnepaltax.com.np/api/adminUserLogin');
//       final Map<String, dynamic> data = {
//         'email': email,
//         'password': password,
//         "is_this_mobile_app": 1
//       };
//       final response = await http.post(
//         url,
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode(data),
//       );
//       var data2 = jsonDecode(response.body);
//       print(response.statusCode);
//       print(jsonEncode(response.body));
//       if (response.statusCode == 200) {
//         print('Data posted successfully');
//       } else {
//         print('Failed to post data. Error code: ${response.statusCode}');
//       }
//       return jsonDecode(response.body);
//     } catch (e) {
//       print("the error is " + e.toString());
//     }
//   }