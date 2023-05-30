import 'package:black_list/widgets/meun_bottom.dart';
import 'package:flutter/material.dart';
import '../generated/l10n.dart';
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${S.of(context).hi}, Shoroq",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.notifications)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    BlocksNumberWidget(),
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
                    SizedBox(height: 100,),
                  ],
                ),
              ),
            ),
            Align(alignment: Alignment.bottomCenter, child: MenuBottom())
          ],
        ),
      ),
    );
  }
}

class BlocksNumberWidget extends StatelessWidget {
  const BlocksNumberWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.maxFinite,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color5,
        borderRadius: BorderRadius.circular(5),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).count_blacklist,
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
    );
  }
}

