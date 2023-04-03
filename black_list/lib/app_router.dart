
import 'package:black_list/screens/culprit_screen.dart';
import 'package:black_list/screens/home_screen.dart';
import 'package:black_list/screens/login_screen.dart';
import 'package:black_list/screens/setting_screen.dart';
import 'package:black_list/screens/signup_screen.dart';
import 'package:black_list/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  late Widget startWidget;
  AppRouter() {
    startWidget = SplashScreen();
  }

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => startWidget);
      case SignupScreen.routeName:
        return MaterialPageRoute(builder: (_) => SignupScreen());
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case SettingScreen.routeName:
        return MaterialPageRoute(builder: (_) => SettingScreen());
      case CulpritScreen.routeName:
        return MaterialPageRoute(builder: (_) => CulpritScreen());
      default:
        return null;
    }
  }
}
