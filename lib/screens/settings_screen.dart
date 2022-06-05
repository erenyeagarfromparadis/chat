import 'package:flutter/material.dart';

import '../controllers/settings_controller.dart';
import 'package:get/get.dart';
class SettingsScreen  extends GetView<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SettingsController());
  return Scaffold(
  appBar: AppBar(
    elevation: 0 ,
    automaticallyImplyLeading: false,
    flexibleSpace: SafeArea(
      child: GestureDetector(
        onTap: (){},
        child: Container(
          padding: EdgeInsets.only(left: 16,right: 16),
          child: Row(children: [
            Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center
            ,
            children: [
              Hero(tag: "profileName", child: Obx(()=>Text(controller.userModel.value.name == "" ? "No Name" : controller.userModel.value.name , style: const TextStyle(fontSize: 16 , fontWeight: FontWeight.w600)))),
            ],))
          ],),
          ),

      ),
    ),

  ),
  );
  }
}
