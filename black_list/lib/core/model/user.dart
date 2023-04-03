class UserModel {
  String uid;
  String name;
  String? phone;
  String email;
  String? image;

  UserModel(
      {required this.uid,
      required this.name,
      this.phone,
      required this.email,
      this.image});

  Map<String, dynamic> toJson() {
    return {
      "uid": uid,
      "name": name,
      "phone": phone,
      "email": email,
    };
  }
}
