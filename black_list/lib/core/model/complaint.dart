import 'package:black_list/core/model/culprit.dart';

class Complaint{
  final String? complaintID;
  final String publisherID;
  final String publisherName;
  final double orderAmount;
  final DateTime orderDate;
  final String? story;
  final String orderFrom;
  final String culpritId;
  List<String> image;

  Complaint({this.complaintID, required this.publisherID, required this.publisherName, required this.orderAmount,
      required this.orderDate, this.story, required this.orderFrom, required this.culpritId, required this.image});
}