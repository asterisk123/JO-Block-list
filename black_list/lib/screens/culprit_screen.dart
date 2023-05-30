import 'package:black_list/core/service/complaint_service.dart';
import 'package:black_list/core/service/culprit_service.dart';
import 'package:black_list/screens/complain_screen.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CulpritScreen extends StatelessWidget {
  static const String routeName = '/culprit';

  const CulpritScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 0),
            child: Column(
              children: [
                Text(CulpritService.sara.name,
                    style: Theme.of(context).textTheme.headline4),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_city,
                      color: color3,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      CulpritService.sara.city,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(color: color3),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text("mobile number: **********67"),
                SizedBox(
                  height: 30,
                ),
                Column(
                    children:
                        getComplaints(context, CulpritService.sara.complaints)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  getComplaints(context, List<String> complaints) {
    List<Widget> complaintsWidget = [];

    ComplaintService.complaints
        .where((element) => element.culpritId == CulpritService.sara.culpritId)
        .forEach(
      (complaint) {
        complaintsWidget.add(
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ComplainScreen.routeName,
                  arguments: complaint);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 150,
                decoration: BoxDecoration(
                  color: color5,
                  //  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(4, 5), // Shadow position
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image.network(
                        "https://www.crushpixel.com/big-static19/preview4/girl-computer-with-catgirl-programmer-3391199.jpg",
                        height: 100.0,
                        width: 100.0,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Published by: ${complaint.publisherName}"),
                          Text("${complaint.orderDate}"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(complaint.orderFrom),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.report,
                                  color: color3,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );

    return complaintsWidget;
  }
}
