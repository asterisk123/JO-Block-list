import 'package:black_list/utils/colors.dart';
import 'package:flutter/material.dart';

class MyBlockList extends StatelessWidget {
  const MyBlockList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('My complaints'),
        SizedBox(height: 10,),
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: redColor.shade600,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Wed, 15 Feb - 2023',style: Theme.of(context).textTheme.caption,),
                  Text("Sara Ahmad",style: Theme.of(context).textTheme.headline6,),
                  Text('Order ammount: 23JD'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(
                            "https://www.crushpixel.com/big-static19/preview4/girl-computer-with-catgirl-programmer-3391199.jpg"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
