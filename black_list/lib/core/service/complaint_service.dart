import 'package:black_list/core/model/website.dart';

import '../model/complaint.dart';

class ComplaintService {
  static List<Complaint> complaints = [
    Complaint(
      publisherName: 'Shoroq',
      publisherID: '9999954',
      orderAmount: 78.9,
      orderDate: DateTime.now(),
      orderFrom: Website.SHEIN,
      image: ['assets/images/proof1.jpg', 'assets/images/proof2.jpg'],
      culpritId: '76543',
    ),
    Complaint(
      publisherName: 'Asmaa',
      publisherID: '6543265',
      orderAmount: 100.0,
      orderDate: DateTime.now(),
      orderFrom: Website.Amazon,
      image: ['assets/images/proof1.jpg', 'assets/images/proof2.jpg'],
      culpritId: '76543',
    ),
  ];
}
