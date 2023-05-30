import 'package:black_list/screens/signup_screen.dart';
import 'package:black_list/widgets/primary_button.dart';
import 'package:black_list/widgets/text_input_field.dart';
import 'package:flutter/material.dart';

import '../core/service/auth_service.dart';
import '../generated/l10n.dart';
import '../utils/colors.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _authService = AuthService();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Container(),
              ),
              Image.asset("assets/images/black_list.png"),
              TextInputField(
                  textEditingController: _emailController,
                  hintText: S.of(context).enter_email,
                  textInputType: TextInputType.emailAddress),
              const SizedBox(
                height: 10,
              ),
              TextInputField(
                textEditingController: _passwordController,
                hintText: S.of(context).enter_password,
                textInputType: TextInputType.text,
                isPass: true,
              ),
              const SizedBox(
                height: 30,
              ),
              PrimaryButton(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );
                    _authService
                        .login(_emailController.text, _passwordController.text)
                        .then((value) {
                      Navigator.pushReplacementNamed(
                          context, HomeScreen.routeName);
                    }).catchError((error) {
                      // hide waiting dialog
                      Navigator.pop(context);
                      // show error message
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Login failed. Please try again.')),
                      );
                    });
                  },
                  caption: S.of(context).login),
              Flexible(
                flex: 1,
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).Dont_have_account,
                      style: const TextStyle(color: primaryColor),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, SignupScreen.routeName);
                      },
                      child: Text(
                        S.of(context).sign_up,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: color3),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
