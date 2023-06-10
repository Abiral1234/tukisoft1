import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/cubits/post_cubit/login_state.dart';
import 'package:my_app/cubits/post_cubit/post_state.dart';
import 'package:my_app/model/login_model.dart';

import '../../model/post_model.dart';
import '../repositories/login_repository.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit() : super(LogInLoadingState()) {
    checkStatus();
  }

  LoginRepository postRepository = LoginRepository();
  void checkStatus() async {
    try {
      // List<loginmodel> logins = await LoginRepository.sendLogin();
      // emit(LogInLoadedState(logins));
    } catch (ex) {
      emit(LogInErrorState(ex.toString()));
    }
  }
}
