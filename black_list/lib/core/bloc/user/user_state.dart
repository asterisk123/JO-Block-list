import '../../model/user.dart';

abstract class UserState {}

class UserInitial extends UserState {}

class UserLoaded extends UserState {
  final UserModel? user;

  UserLoaded({required this.user});
}
