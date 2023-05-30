import 'package:black_list/core/service/complaint_service.dart';

import '../model/culprit.dart';

class CulpritService {
  static Culprit sara = Culprit(
      culpritId: '76543',
      name: 'Sara Ahmad',
      mobileNumber: '078666632',
      city: 'Irbid',
      district: 'Idon',
      addressDetails: 'apartment:1 - floar 1',
      complaints: ComplaintService.complaints
          .where((com) => com.culpritId == '76543')
          .map((e) => e.culpritId)
          .toList());
}
