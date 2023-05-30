import 'dart:io';

import 'package:black_list/screens/home_screen.dart';
import 'package:black_list/screens/login_screen.dart';
import 'package:black_list/widgets/primary_button.dart';
import 'package:black_list/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../core/service/auth_service.dart';
import '../generated/l10n.dart';
import '../utils/colors.dart';
import '../utils/utils.dart';

class SignupScreen extends StatefulWidget {
  static const String routeName = '/signup';

  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _authService = AuthService();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  File? image;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/black_list.png",
                ),
                Stack(
                  children: [
                    image != null
                        ? CircleAvatar(
                            radius: 64,
                            backgroundImage:
                                MemoryImage(image!.readAsBytesSync()),
                          )
                        : const CircleAvatar(
                            radius: 64,
                            backgroundImage: NetworkImage(
                                "https://www.crushpixel.com/big-static19/preview4/girl-computer-with-catgirl-programmer-3391199.jpg"),
                          ),
                    Positioned(
                      left: 85,
                      bottom: -8,
                      child: IconButton(
                        onPressed: () async {
                          File im = await pickImage(ImageSource.gallery);
                          setState(() {
                            image = im;
                          });
                        },
                        icon: const Icon(Icons.add_a_photo, color: color3),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                TextInputField(
                    textEditingController: _emailController,
                    hintText: S.of(context).enter_email,
                    textInputType: TextInputType.emailAddress),
                const SizedBox(
                  height: 10,
                ),
                TextInputField(
                    textEditingController: _usernameController,
                    hintText: S.of(context).enter_name,
                    textInputType: TextInputType.text),
                const SizedBox(
                  height: 10,
                ),
                TextInputField(
                    textEditingController: _phoneNumberController,
                    hintText: S.of(context).enter_phone_number,
                    textInputType: TextInputType.number),
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
                  caption: S.of(context).sign_up,
                  onTap: (() async {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );

                    await _authService
                        .registerWithEmailAndPassword(
                            _emailController.text,
                            _passwordController.text,
                            _usernameController.text,
                            _phoneNumberController.text,
                            image)
                        .then((user) {
                      if (user != null) {
                        Navigator.pushReplacementNamed(
                            context, HomeScreen.routeName);
                      } else {
                        Navigator.pop(context);
                      }
                    });
                  }),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(S.of(context).do_have_account,
                          style: TextStyle(color: primaryColor)),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, LoginScreen.routeName);
                        },
                        child: Text(
                          S.of(context).login,
                          style: TextStyle(
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
      ),
    );
  }
}
