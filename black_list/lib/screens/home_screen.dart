import 'package:black_list/widgets/meun_bottom.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

import '../widgets/all_blocked_people.dart';
import '../widgets/my_block_list.dart';
import '../widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hi, Shoroq",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.notifications)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 90,
                    width: double.maxFinite,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: color5,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              "https://www.crushpixel.com/big-static19/preview4/girl-computer-with-catgirl-programmer-3391199.jpg"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Count of Your black list is: ',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text(
                                '10',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SearchBar(),
                  SizedBox(
                    height: 30,
                  ),
                  MyBlockList(),
                  SizedBox(
                    height: 30,
                  ),
                  AllBlockedPeople(),
                ],
              ),
            ),
            Align(alignment: Alignment.bottomCenter, child: MenuBottom())
          ],
        ),
      ),
    );
  }
}
