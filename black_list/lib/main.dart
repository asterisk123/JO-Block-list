import 'package:black_list/screens/signup_screen.dart';
import 'package:black_list/utils/colors.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app_router.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAppCheck.instance.activate();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Black list',
      theme: ThemeData(
        scaffoldBackgroundColor: color6,
        fontFamily: 'Cairo',
        iconTheme: const IconThemeData(
          color: color3,
        ),
        textTheme: const TextTheme(
          headline4: TextStyle(fontSize: 24, color: primaryColor),
          headline6: TextStyle(fontSize: 20, color: primaryColor),
          bodyText1: TextStyle(
              fontSize: 14, color: color0, fontWeight: FontWeight.normal),
          caption: TextStyle(
              fontSize: 11, color: color5, fontWeight: FontWeight.normal),
          bodyText2: TextStyle(fontSize: 18, color: primaryColor),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color3),
          ),
        ),
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      locale: const Locale('en'),
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      home: const SignupScreen(),
      onGenerateRoute: AppRouter().onGenerateRoute,
    );
  }
}
