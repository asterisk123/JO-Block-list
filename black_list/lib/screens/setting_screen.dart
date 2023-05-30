import 'dart:typed_data';

import 'package:black_list/screens/login_screen.dart';
import 'package:black_list/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../core/service/auth_service.dart';
import '../utils/colors.dart';
import '../utils/utils.dart';
import '../widgets/text_input_field.dart';

class SettingScreen extends StatelessWidget {
  static const String routeName = '/setting';
  SettingScreen({Key? key}) : super(key: key);
  final _authService = AuthService();

  final _emailController = TextEditingController(text: 'Shoroq.hani@gmail.com');
  final _passwordController = TextEditingController(text: '*************');
  final _usernameController = TextEditingController(text: 'Shoroq Jaradat');
  final _phoneNumberController = TextEditingController(text: '0782141517');
  Uint8List? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                      },
                      icon: const Icon(Icons.add_a_photo),
                    ),
                  ),
                ],
              ),
              TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );

                    _authService.logout().then((value) {
                      Navigator.popAndPushNamed(context, LoginScreen.routeName);
                    });
                  },
                  child: const Text('Logout')),
              Flexible(
                flex: 1,
                child: Container(),
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
                    color: color3,
                  ),
                  child: const Text("Save"),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 24,
              ),
              Flexible(
                flex: 1,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
