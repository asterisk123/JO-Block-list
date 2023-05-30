import 'package:flutter/material.dart';

import '../utils/colors.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String hintText;
  final TextInputType textInputType;
  final bool isPass;
  const TextInputField(
      {Key? key,
      this.textEditingController,
      required this.hintText,
      this.textInputType = TextInputType.text,
      this.isPass = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: color5),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    );
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle:
            TextStyle(color: secondaryColor, fontStyle: FontStyle.italic),
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
        fillColor: color5,
      ),
      keyboardType: textInputType,
      obscureText: isPass,
      style: TextStyle(color: primaryColor),
    );
  }
}
