import 'package:flutter/cupertino.dart';
import 'package:flutter_chat_app_learning/models/user_model.dart';
import 'package:get/get.dart';
import 'package:flutter_chat_app_learning/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
class SettingsController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  Rx<UserModel> userModel = UserModel(uId:"", name:"" , image:"", number:"", status:"", typing:"", online:"").obs;

  @override
  void onInit() {
    super.onInit();
    // FirebaseFirestore.instance.collection("users").doc(auth.currentUser?.uid).get()
  }
}