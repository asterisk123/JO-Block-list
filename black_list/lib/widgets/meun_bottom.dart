import 'package:black_list/screens/home_screen.dart';
import 'package:black_list/screens/setting_screen.dart';
import 'package:flutter/material.dart';

import '../screens/add_complaint_screen.dart';
import '../utils/colors.dart';

class MenuBottom extends StatefulWidget {
  const MenuBottom({Key? key}) : super(key: key);

  @override
  State<MenuBottom> createState() => _MenuBottomState();
}

class _MenuBottomState extends State<MenuBottom> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
     height: 70,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              height: 55,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                  color: color5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                    icon: Icon(Icons.home),
                    color: selectedIndex == 0 ? color3 : secondaryColor,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.reviews),
                    color: selectedIndex == 1 ? color3 : primaryColor,
                  ),
                  SizedBox(
                   width: 40,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_chart_rounded),
                    color: selectedIndex == 2 ? color3 : primaryColor,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 3;
                      });
                      Navigator.pushNamed(context, SettingScreen.routeName);
                    },
                    icon: Icon(Icons.settings),
                    color: selectedIndex == 3 ? color3 : primaryColor,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, AddComplaintScreen.routeName);
              },
              child: Icon(Icons.add),
              backgroundColor: color3,
            ),
          ),
        ],
      ),
    );
  }
}
