import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/login_page.dart';
import 'bloc/sign_in/bloc/sign_in_bloc.dart';
import 'bloc/sign_up/sign_up_bloc.dart';
import 'package:http/http.dart' as http;

// http://www.daykhata.helpnepaltax.com.np/api/adminUserLogin
void main() {
  runApp(
    MaterialApp(
      home: Signup(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Signup extends StatelessWidget {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  Future<List?> signUp(String firstname, String lastname, String email,
      String password, String confirmPassword) async {
    final url =
        Uri.parse('https://www.daykhata.helpnepaltax.com.np/api/addAdminUser');

    final Map<String, dynamic> data = {
      'email': email,
      'password': password,
      'is_this_mobile_app': 1,
      'name': firstname + " " + lastname,
    };

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );
    print(response.body);
    if (response.statusCode == 200) {
      print('Data posted successfully');
    } else {
      print('Failed to post data. Error code: ${response.statusCode}');
    }
    return [jsonEncode(data), response.statusCode];
  }

  // Future<void> postData() async {
  //   // String email = 'example@example.com';
  //   // String password = 'abiral1234';
  //   // String phone = "1";
  //   final url = 'http://www.daykhata.helpnepaltax.com.np/api/addAdminUser/';

  //   final body = {
  //     'email': 'example@example.com',
  //     'password': 'mypassword123',
  //     'is_this_mobile_app': '1',
  //     'name': 'Abiral Pokhrel',
  //   };
  //   final headers = {
  //     'Content-Type': 'application/json',
  //   };
  //   try {
  //     final dio = Dio();
  //     final response = await dio.post(
  //       url,
  //       data: body,
  //       options: Options(headers: headers),
  //     );
  //     // print(response);
  //     if (response.statusCode == 200) {
  //       print('Post request successful!');
  //       print('Response body: ${response.data}');
  //     } else {
  //       print('Error: ${response.statusCode}');
  //     }
  //   } catch (e) {
  //     print('Error: $e');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return BlocProvider(
                                  create: (context) => SignInBloc(context),
                                  child: LoginPage(),
                                );
                              },
                            ),
                          );
                        },
                        backgroundColor: const Color.fromRGBO(49, 26, 187, 1),
                        child: const Icon(Icons.arrow_back),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.all(2),
                  height: 80,
                  width: 220,
                  child: Image.asset('asset/images/dayimage.png'),
                ),
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: Color.fromRGBO(49, 26, 187, 1),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: 330,
                  child: TextField(
                    onChanged: (val) {
                      BlocProvider.of<SignUpBloc>(context).add(
                          SignUpTextChangedEvent(
                              firstNameController.text,
                              lastNameController.text,
                              emailController.text,
                              passwordController.text,
                              confirmPasswordController.text));
                    },
                    controller: firstNameController,
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      border: OutlineInputBorder(),
                      icon: Icon(
                        Icons.person,
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
                    onChanged: (val) {
                      BlocProvider.of<SignUpBloc>(context).add(
                          SignUpTextChangedEvent(
                              firstNameController.text,
                              lastNameController.text,
                              emailController.text,
                              passwordController.text,
                              confirmPasswordController.text));
                    },
                    controller: lastNameController,
                    cursorHeight: 12,
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      border: OutlineInputBorder(),
                      icon: Icon(
                        Icons.person_2,
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
                    onChanged: (val) {
                      BlocProvider.of<SignUpBloc>(context).add(
                          SignUpTextChangedEvent(
                              firstNameController.text,
                              lastNameController.text,
                              emailController.text,
                              passwordController.text,
                              confirmPasswordController.text));
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Email Address',
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
                    onChanged: (val) {
                      BlocProvider.of<SignUpBloc>(context).add(
                          SignUpTextChangedEvent(
                              firstNameController.text,
                              lastNameController.text,
                              emailController.text,
                              passwordController.text,
                              confirmPasswordController.text));
                    },
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: 'New Password',
                      border: OutlineInputBorder(),
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromRGBO(49, 26, 187, 1),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: 330,
                  child: TextField(
                    onChanged: (val) {
                      BlocProvider.of<SignUpBloc>(context).add(
                          SignUpTextChangedEvent(
                              firstNameController.text,
                              lastNameController.text,
                              emailController.text,
                              passwordController.text,
                              confirmPasswordController.text));
                    },
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      border: OutlineInputBorder(),
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromRGBO(49, 26, 187, 1),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 15),
                BlocBuilder<SignUpBloc, SignUpState>(
                  builder: (context, state) {
                    if (state is SignUpErrorState) {
                      return Text(
                        state.errorMessage,
                        style:
                            TextStyle(fontFamily: 'Poppins', color: Colors.red),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
                const SizedBox(height: 10),
                BlocBuilder<SignUpBloc, SignUpState>(
                  builder: (context, state) {
                    if (state is SignUpLoadingState) {
                      return CircularProgressIndicator();
                    }
                    return SizedBox(
                      height: 45,
                      width: 330,
                      child: ElevatedButton(
                        onPressed: () {
                          if (state is SignUpValidState) {
                            BlocProvider.of<SignUpBloc>(context).add(
                                SignUpSubmittedEvent(
                                    firstNameController.text,
                                    lastNameController.text,
                                    emailController.text,
                                    passwordController.text,
                                    confirmPasswordController.text));
                            signUp(
                                firstNameController.text,
                                lastNameController.text,
                                emailController.text,
                                passwordController.text,
                                confirmPasswordController.text);
                            // Future<List?> signUpStatus = signUp(
                            //     firstNameController.text,
                            //     lastNameController.text,
                            //     emailController.text,
                            //     passwordController.text,
                            //     confirmPasswordController.text);
                            // print(signUpStatus);
                          }
                          if (state is SignUpValidState) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return BlocProvider(
                                      create: (context) => SignInBloc(context),
                                      child: LoginPage());
                                },
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 0,
                          backgroundColor: state is SignUpValidState
                              ? const Color.fromRGBO(49, 26, 187, 1)
                              : Colors.grey.shade600,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Sign up',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.arrow_forward_outlined),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return BlocProvider(
                            create: (context) => SignInBloc(context),
                            child: LoginPage(),
                          );
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                  ),
                  child: RichText(
                    text: const TextSpan(
                      text: "Already Have an Account?",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(49, 26, 187, 1),
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Login",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
