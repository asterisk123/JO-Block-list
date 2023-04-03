import 'package:flutter/material.dart';

import '../screens/culprit_screen.dart';
import '../utils/colors.dart';

class AllBlockedPeople extends StatelessWidget {
  const AllBlockedPeople({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Block List'),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, CulpritScreen.routeName);
          },
          child: Container(
            padding: EdgeInsets.all(16),
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [color0, color3],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                //   tileMode: TileMode.clamp,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      Text('Number of complaints: 11'),
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage(
                      "https://www.crushpixel.com/big-static19/preview4/girl-computer-with-catgirl-programmer-3391199.jpg"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
