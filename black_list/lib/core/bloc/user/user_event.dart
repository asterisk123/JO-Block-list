import '../../model/user.dart';

abstract class UserEvent {}

class UserLoggedIn extends UserEvent {
  final UserModel user;

  UserLoggedIn(this.user);
}

class UserLoggedOut extends UserEvent {}
