import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_chat_app_learning/screens/settings_screen.dart';
import 'package:get/get.dart';
import '../controllers/dashboard.controller.dart';
import 'call_screen.dart';
import 'chat_screen.dart';
import 'contact_screen.dart';
class DashboardScreen extends GetView<DashboardController>{
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DashboardController());
    return Scaffold(
      bottomNavigationBar: Obx(
            ()=>CurvedNavigationBar(

        key: controller.bottomNavigationKey,
        color: Theme.of(context).primaryColor,
        index: controller.page.value,
        animationDuration: Duration(microseconds: 3000),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        onTap: (index){
          controller.onItemClick(index);
          controller.pageController.jumpToPage(index);
        },
              items: [
          Icon(Icons.chat_rounded,size: 30,color: Colors.white,),
          Icon(Icons.contacts_rounded,size: 30,color: Colors.white,),
          Icon(Icons.phone_rounded,size: 30,color: Colors.white,),
          Icon(Icons.settings_rounded,size: 30,color: Colors.white,),
        ],
      ),
      ) ,
      backgroundColor: Theme.of(context).backgroundColor,
      body: PageView(
        physics:NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: [
          ChatListScreen(),
          ContactScreen(),
          CallScreen(),
          SettingsScreen(),
        ],
      ),
    );
  }
}
