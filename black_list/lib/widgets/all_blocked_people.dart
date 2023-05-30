import 'package:flutter/material.dart';
import '../generated/l10n.dart';
import 'brief_culprit_info_widget.dart';

class AllBlockedPeople extends StatelessWidget {
  const AllBlockedPeople({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          S.of(context).block_list,
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: 10,
        ),
        BriefCulpritInfoWidget(),
        SizedBox(
          height: 10,
        ),
        BriefCulpritInfoWidget(),
      ],
    );
  }
}
