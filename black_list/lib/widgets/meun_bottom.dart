import 'package:black_list/screens/setting_screen.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class MenuBottom extends StatefulWidget {
  const MenuBottom({Key? key}) : super(key: key);

  @override
  State<MenuBottom> createState() => _MenuBottomState();
}

class _MenuBottomState extends State<MenuBottom> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: color5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
            color: selectedIndex==0?redColor: secondaryColor,

          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.reviews),
            color: selectedIndex==1?redColor: primaryColor,

          ),
          FloatingActionButton(onPressed: (){},child: Icon(Icons.add),
            backgroundColor: redColor,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_chart_rounded),
            color: selectedIndex==2?redColor: primaryColor,

          ),
          IconButton(
            onPressed: () {
              setState(() {
                selectedIndex=3;
              });
              Navigator.pushNamed(context, SettingScreen.routeName);
            },
            icon: Icon(Icons.settings),
            color: selectedIndex==3?redColor: primaryColor,
          ),
        ],
      ),
    );
  }
}
