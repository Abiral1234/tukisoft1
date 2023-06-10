import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/ListPage.dart';
import 'package:my_app/bloc/internet/bloc/internet_bloc_bloc.dart';
import 'package:my_app/bloc/sign_in/bloc/sign_in_bloc.dart';
import 'package:my_app/cubits/post_cubit/post_cubit.dart';
import 'package:my_app/login_page.dart';
import 'package:my_app/repositories/post_repository.dart';

void main() {
  PostRepository postRepository = new PostRepository();
  postRepository.fetchPosts();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InternetBlocBloc>(
          create: (context) => InternetBlocBloc(),
        ),
        BlocProvider<PostCubit>(
          create: (context) => PostCubit(),
        ),
        BlocProvider<SignInBloc>(
          create: (context) => SignInBloc(context),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          width: 220,
          height: 220,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 135, 131, 221),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(140),
          ),
          child: Image.asset(
            'asset/images/daylogo.png',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 135, 131, 221),
        elevation: 0,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return LoginPage();
            },
          ));
        },
        child: const Icon(
          Icons.arrow_forward_outlined,
          size: 28,
          color: Color.fromRGBO(49, 26, 187, 1),
        ),
      ),
    );
  }
}
