import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../screens/culprit_screen.dart';
import '../utils/colors.dart';

class BriefCulpritInfoWidget extends StatelessWidget {
  const BriefCulpritInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, CulpritScreen.routeName);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        height: 120,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: secondaryColor,
          ),
          gradient: LinearGradient(
            colors: [color0, color3],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            //   tileMode: TileMode.clamp,
          ),
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
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  Text('${S.of(context).number_complaints}: 11'),
                ],
              ),
            ),
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage("assets/images/shein.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
