class Culprit {
  final String? culpritId;
  final String name;
  final String mobileNumber;
  final String? otherMobileNumber;
  final String city;
  final String district;
  final String addressDetails;
  List<String> complaints;

  Culprit(
      {this.culpritId,
      required this.name,
      required this.mobileNumber,
      this.otherMobileNumber,
      required this.city,
      required this.district,
      required this.addressDetails,
      required this.complaints});
}
