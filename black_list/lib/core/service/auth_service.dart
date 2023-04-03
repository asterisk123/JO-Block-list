import 'package:black_list/core/model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  final _fireStore = FirebaseFirestore.instance;
  final _userCollectionName = "users";

  Future<String> signUpByEmail(UserModel user, String password) async {
    String result = "Some error occurred";
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
              email: user.email, password: password);
      await _fireStore
          .collection(_userCollectionName)
          .doc(userCredential.user?.uid)
          .set(user.toJson());
      result = "successful";
    } catch (err) {
      result = err.toString();
    }
    return result;
  }
}
