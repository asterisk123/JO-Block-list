import 'dart:async';

import 'package:black_list/core/bloc/user/user_event.dart';
import 'package:black_list/core/bloc/user/user_state.dart';
import 'package:bloc/bloc.dart';

import '../../model/user.dart';

class UserBloc extends Cu<UserEvent, UserState> {
  UserBloc() : super(UserInitial());

  UserModel? _currentUser;

  UserModel? get currentUser => _currentUser;

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is UserLoggedIn) {
      _currentUser = event.user;
      yield UserLoaded(user: _currentUser);
    } else if (event is UserLoggedOut) {
      _currentUser = null;
      yield UserInitial();
    }
  }
}
