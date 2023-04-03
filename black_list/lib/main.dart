import 'package:black_list/screens/signup_screen.dart';
import 'package:black_list/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Black list',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: color6,
        textTheme: TextTheme(
          headline4: TextStyle(fontSize: 24,color: primaryColor),
          headline6: TextStyle(fontSize: 20,color: primaryColor),
          bodyText1: TextStyle(fontSize: 14,color: color0,fontWeight: FontWeight.normal),
          caption: TextStyle(fontSize: 11,color: color5,fontWeight: FontWeight.normal),
        ),
      ),
      /*home: const ResponsiveLayoutScreen(
          mobileScreen: MobileScreen(), webScreen: WebScreen()),*/
      home: const SignupScreen(),
      onGenerateRoute: AppRouter().onGenerateRoute,
    );
  }
}
