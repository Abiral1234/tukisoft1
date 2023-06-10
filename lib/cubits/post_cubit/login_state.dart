import 'package:my_app/model/login_model.dart';

import '../../model/post_model.dart';

abstract class LogInState {}

class LogInLoadingState extends LogInState {}

class LogInLoadedState extends LogInState {
  final List<loginmodel> logins;
  LogInLoadedState(this.logins);
}

class LogInErrorState extends LogInState {
  final String error;
  LogInErrorState(this.error);
}
