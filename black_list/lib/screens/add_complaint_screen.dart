import 'package:black_list/screens/home_screen.dart';
import 'package:black_list/widgets/text_input_field.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/colors.dart';

class AddComplaintScreen extends StatefulWidget {
  static const String routeName = "/addComplaint";

  const AddComplaintScreen({Key? key}) : super(key: key);

  @override
  State<AddComplaintScreen> createState() => _AddComplaintScreen();
}

class _AddComplaintScreen extends State<AddComplaintScreen> {
  late final PageController _controller;
  int count = 0;
  List<Map<String, dynamic>> pages = [
    {
      "widget": AddCulpritInfoForm(),
      "title": S.current.fill_culprit_information,
    },
    {
      "widget": CulpritMatching(),
      "title": S.current.select_match,
    },
    {
      "widget": AddComplaintInfoForm(),
      "title": S.current.tell_your_issue,
    },
  ];

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/black_list.png',
                  height: 80,
                  width: 180,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 400,
                  width: double.infinity,
                  child: PageView.builder(
                    itemCount: pages.length,
                    controller: _controller,
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              pages[index]['title'],
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            pages[index]['widget'],
                          ],
                        ),
                      );
                    },
                    onPageChanged: (index) {
                      setState(() {
                        count = index;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: count == 0 ? color3 : color5,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: count == 1 ? color3 : color5,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: count == 2 ? color3 : color5,
                    ),
                    SizedBox(
                      width: 5,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        count == 2
                            ? Navigator.pushNamed(context, HomeScreen.routeName)
                            : _controller.animateToPage(++count,
                                duration: Duration(microseconds: 30),
                                curve: Curves.bounceIn);
                      },
                      child: count == 2
                          ? Text(S.of(context).done)
                          : Text(S.of(context).next)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddCulpritInfoForm extends StatelessWidget {
  const AddCulpritInfoForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        TextInputField(hintText: S.of(context).enter_culprit_name),
        SizedBox(
          height: 10,
        ),
        TextInputField(hintText: S.of(context).enter_phone_number),
        SizedBox(
          height: 10,
        ),
        TextInputField(hintText: S.of(context).enter_other_mobile),
        SizedBox(
          height: 10,
        ),
        TextInputField(hintText: S.of(context).enter_facebook_link),
        SizedBox(
          height: 10,
        ),
        TextInputField(hintText: S.of(context).enter_city_name),
        SizedBox(
          height: 10,
        ),
        TextInputField(hintText: S.of(context).enter_address_details),
      ]),
    );
  }
}

class CulpritMatching extends StatelessWidget {
  const CulpritMatching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 150,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: color5,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(Icons.check_box_outline_blank),
                SizedBox(
                  width: 10,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Noura mhmd'),
                      Text('08766543322 - Amman'),
                      Text('facebook: https://ggghjjk.com'),
                    ]),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: double.infinity,
            height: 150,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color5,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.check_box_outlined,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Noura mhmd'),
                      Text('08766543322-Amman'),
                      Text('facebook: https://ggghjjk.com'),
                    ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AddComplaintInfoForm extends StatelessWidget {
  const AddComplaintInfoForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextInputField(hintText: S.of(context).order_amount),
          SizedBox(
            height: 10,
          ),
          TextInputField(hintText: S.of(context).website),
          SizedBox(
            height: 10,
          ),
          TextInputField(hintText: S.of(context).order_date),
          SizedBox(
            height: 10,
          ),
          TextInputField(hintText: S.of(context).store),
        ],
      ),
    );
  }
}
