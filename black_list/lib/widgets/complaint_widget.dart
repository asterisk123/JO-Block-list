import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/colors.dart';

class ComplaintWidget extends StatelessWidget {
  const ComplaintWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 120,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color3,
        border: Border.all(color: secondaryColor),
        boxShadow: [
          BoxShadow(
            color: color5,
            spreadRadius: 2,
            blurRadius: 7,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wed, 15 Feb - 2023',
                  style: Theme.of(context).textTheme.caption,
                ),
                Text(
                  "Sara Ahmad",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text('${S.of(context).order_amount}: 23JD'),
              ],
            ),
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/modanisa.png"),
          ),
        ],
      ),
    );
  }
}
