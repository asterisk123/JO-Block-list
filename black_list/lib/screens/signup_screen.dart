import 'dart:typed_data';

import 'package:black_list/screens/home_screen.dart';
import 'package:black_list/screens/login_screen.dart';
import 'package:black_list/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/colors.dart';
import '../utils/utils.dart';

class SignupScreen extends StatefulWidget {
  static const String routeName='/signup';
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  Uint8List? image;

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
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/black_list.png",),
              Stack(
                children: [
                  image != null
                      ? CircleAvatar(
                          radius: 64,
                          backgroundImage: MemoryImage(image!),
                        )
                      : const CircleAvatar(
                          radius: 64,
                          backgroundImage: NetworkImage(
                              "https://www.crushpixel.com/big-static19/preview4/girl-computer-with-catgirl-programmer-3391199.jpg"),
                        ),
                  Positioned(
                    left: 90,
                    bottom: -10,
                    child: IconButton(
                      onPressed: () async {
                        Uint8List im = await pickImage(ImageSource.gallery);
                        setState(() {
                          image = im;
                        });
                      },
                      icon: const Icon(Icons.add_a_photo),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              TextInputField(
                  textEditingController: _emailController,
                  hintText: "Enter your email",
                  textInputType: TextInputType.emailAddress),
              const SizedBox(
                height: 24,
              ),
              TextInputField(
                  textEditingController: _usernameController,
                  hintText: "Enter your name",
                  textInputType: TextInputType.text),
              const SizedBox(
                height: 24,
              ),
              TextInputField(
                  textEditingController: _phoneNumberController,
                  hintText: "Enter your phone number",
                  textInputType: TextInputType.number),
              const SizedBox(
                height: 24,
              ),
              TextInputField(
                textEditingController: _passwordController,
                hintText: "Enter your password",
                textInputType: TextInputType.text,
                isPass: true,
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    color: blueColor,
                  ),
                  child: const Text("Sign up"),
                ),
                onTap: (){
                  Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                },
              ),
              const SizedBox(
                height: 24,
              ),
              Flexible(
                flex: 1,
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't you have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, LoginScreen.routeName);
                      },
                      child: const Text(
                        "login up",
                        style: TextStyle(fontWeight: FontWeight.bold),
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
