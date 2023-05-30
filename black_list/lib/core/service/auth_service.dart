import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../model/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<UserModel?> registerWithEmailAndPassword(String email, String password,
      String displayName, String phone, File? image) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      // Upload profile image to Firebase Storage and get the URL
      String? profileImageUrl;
      if (image != null) {
        String filePath =
            'profile_images/${result.user!.uid}/${DateTime.now().millisecondsSinceEpoch}.jpg';
        Reference storageReference = _storage.ref().child(filePath);
        await storageReference.putFile(image);
        profileImageUrl = await storageReference.getDownloadURL();
      }
      UserModel useModel = UserModel(
          name: displayName,
          email: email,
          uid: result.user!.uid,
          image: profileImageUrl,
          phone: phone);
      // Create a document for the new user with the user ID and profile image URL
      await usersCollection.doc(result.user!.uid).set(useModel.toJson());
      return useModel;
    } on FirebaseAuthException catch (e) {
      if (e.code != 'email-already-in-use') {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        await FirebaseAuth.instance.currentUser?.delete();
      }
    }
  }

  Future<UserModel?> login(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}
