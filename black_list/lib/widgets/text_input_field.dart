import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String hintText;
  final TextInputType textInputType;
  final bool isPass;
  const TextInputField(
      {Key? key,
       this.textEditingController,
      required this.hintText,
       this.textInputType=TextInputType.text,
      this.isPass = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
