import 'package:flutter/material.dart';

import '../core/model/complaint.dart';
import '../widgets/custome_carousel_slider.dart';


class ComplainScreen extends StatelessWidget {
  final Complaint complaint;
  const ComplainScreen({Key? key,required this.complaint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCarouselSlider(height: 300,
            images: complaint.image
        ),
        Text("Published by:${complaint.publisherName}"),
        Text("Date:${complaint.orderDate}"),
        Text("${complaint.orderFrom}"),

      ],
    );
  }
}
