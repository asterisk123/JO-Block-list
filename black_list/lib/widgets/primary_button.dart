import 'package:flutter/material.dart';

import '../utils/colors.dart';

class PrimaryButton extends StatelessWidget {
  final Function() onTap;
  final String caption;
  const PrimaryButton({Key? key, required this.onTap,required this.caption}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          color: color3,
        ),
        child: Center(
          child: Text(
           caption,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
