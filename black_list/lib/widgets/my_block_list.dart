import 'package:black_list/utils/colors.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import 'complaint_widget.dart';

class MyBlockList extends StatelessWidget {
  const MyBlockList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          S.of(context).my_complaints,
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ComplaintWidget(),
              SizedBox(
                width: 10,
              ),
              ComplaintWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
