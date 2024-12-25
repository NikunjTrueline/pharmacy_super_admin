import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import '../model/admin.dart';
import '../model/user.dart';

class FirebaseService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseDatabase _database = FirebaseDatabase.instance;

  static final FirebaseService _instance = FirebaseService._internal();

  factory FirebaseService() {
    return _instance;
  }

  FirebaseService._internal();

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return result.user;
    } on FirebaseAuthException catch (e) {
      throw e;
    }
  }

  Stream<List<UserData>> get userStream {
    return _database.ref().child('users').onValue.map((event) {
      List<UserData> categories = [];
      if (event.snapshot.exists) {
        Map<dynamic, dynamic> userMap =
            event.snapshot.value as Map<dynamic, dynamic>;
        userMap.forEach((key, value) {
          final user = UserData.fromJson(value);
          categories.add(user);
        });
      }
      return categories;
    });
  }

  Stream<List<AdminModel>> get adminStream {
    return _database.ref().child("admin").onValue.map((event) {
      List<AdminModel> admin = [];
      if (event.snapshot.exists) {
        Map<dynamic, dynamic> userMap =
            event.snapshot.value as Map<dynamic, dynamic>;
        userMap.forEach((key, value) {
          final user = AdminModel.fromJson(value);
          admin.add(user);
        });
      }
      return admin;
    });
  }

  Future<void> updateUserStatus(bool status, String uid) async {
    try {
      await _database.ref("users").child(uid).update({
        'isActive': status,
        // You can add more fields to update here if needed
      });
    } catch (e) {
      print('Error updating user data: $e');
      throw e;
    }
  }

  Future<void> updateAdminStatus(bool status, String aId) async {
    try {
      await _database.ref("admin").child(aId).update({
        'isActive': status,
        // You can add more fields to update here if needed
      });
    } catch (e) {
      print('Error updating user data: $e');
      throw e;
    }
  }
}
