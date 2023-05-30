import 'package:black_list/core/model/user.dart';

abstract class UserEvent {}

class LoginEvent extends UserEvent {
  final UserModel user;

  LoginEvent(this.user);
}

class LogoutEvent extends UserEvent {}
