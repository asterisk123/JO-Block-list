import 'package:black_list/core/model/complaint.dart';
import 'package:black_list/core/service/complaint_service.dart';
import 'package:black_list/core/service/culprit_service.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/custome_carousel_slider.dart';

class CulpritScreen extends StatelessWidget {
  static const String routeName = '/culprit';
  const CulpritScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(CulpritService.sara.name),
              Text(CulpritService.sara.mobileNumber),
              Text(CulpritService.sara.city),
              Text(CulpritService.sara.district),
              Text(CulpritService.sara.addressDetails),
              Column(children: getComplaints(CulpritService.sara.complaints)),
            ],
          ),
        ),
      ),
    );
  }

  getComplaints(List<String> complaints) {
    List<Widget> complaintsWidget = [];

    ComplaintService.complaints
        .where((element) => element.culpritId == CulpritService.sara.culpritId)
        .forEach(
      (complaint) {
        complaintsWidget.add(
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: color5,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
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
                        Text("Published by:${complaint.publisherName}"),
                        Text("Date:${complaint.orderDate}"),
                        Text(complaint.orderFrom),
                        IconButton(onPressed: () {}, icon: Icon(Icons.report)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );

    return complaintsWidget;
  }
}
