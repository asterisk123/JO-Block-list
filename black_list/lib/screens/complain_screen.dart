import 'package:black_list/utils/colors.dart';
import 'package:flutter/material.dart';

import '../core/model/complaint.dart';
import '../widgets/custome_carousel_slider.dart';

class ComplainScreen extends StatelessWidget {
  static const String routeName = '/complaint';
  final Complaint complaint;
  const ComplainScreen({Key? key, required this.complaint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
            child: Stack(
              children: [
                CustomCarouselSlider(
                    height: MediaQuery.of(context).size.height * 0.65,
                    images: complaint.image),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.35,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                      ),
                      color: color5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Published by: ${complaint.publisherName}",
                            style: Theme.of(context).textTheme.headline4),
                        Text(
                          "${complaint.orderDate}",
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              ?.copyWith(color: color1),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(complaint.orderFrom),
                        Text("Order amount: ${complaint.orderAmount}"),
                        Text("Story: ${complaint.story}"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                        color: color0,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text(' Report Issuse')),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
