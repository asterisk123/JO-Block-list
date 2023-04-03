import 'package:black_list/widgets/text_input_field.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: color5),
          child: Row(
            children: [
              Icon(Icons.search),
              Expanded(
                child: SizedBox(
                  child: TextInputField(
                    hintText: 'Search here..',
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 5,),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: redColor),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_alt_rounded),
          ),
        ),
      ],
    );
  }
}
