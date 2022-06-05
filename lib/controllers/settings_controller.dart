import 'package:flutter/cupertino.dart';
import 'package:flutter_chat_app_learning/models/user_model.dart';
import 'package:get/get.dart';
import 'package:flutter_chat_app_learning/models/user_model.dart';
class SettingsController extends GetxController {
  Rx<UserModel> userModel = UserModel(uId:"", name:"" , image:"", number:"", status:"", typing:"", online:"").obs;
  
}