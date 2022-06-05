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
    backgroundColor: Theme.of(context).backgroundColor,
    flexibleSpace: SafeArea(
      child: GestureDetector(
        onTap: (){},
        child: Container(

          padding: EdgeInsets.only(left: 16,right: 16),
          child: Row(children: [
            Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: "profileName",
                child: Obx(()=>Text(
                  controller.userModel.value.name == "" ? "No Name" : controller.userModel.value.name ,
                  style: const TextStyle(fontSize: 16 , fontWeight: FontWeight.w600),
                ),
                ),
              ),
              SizedBox(height: 6,),
              Text('view and edit profile' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , color: Theme.of(context).primaryColor)
                ,),

            ],),),
            Hero(
              tag: "profileImage",
              child: Obx(
                    ()=>controller.userModel.value.image == "" ? const CircleAvatar(backgroundImage:  AssetImage('assets/images/default.png') , maxRadius: 20,):
                CircleAvatar(backgroundImage: NetworkImage(controller.userModel.value.image) , maxRadius: 20,
                ),
              ),
            ),

          ],),
          ),

      ),
    ),

  ),
    body:Padding(
      padding: const EdgeInsets.only(left: 16 , top: 20 , right:16),
      child: Column(
        children: [
          Padding( padding: const EdgeInsets.symmetric(vertical: 8), child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: (){},
              child: ListTile(
                tileColor: Theme.of(context).disabledColor.withOpacity(0.1),
                leading: Icon(Icons.language_rounded ,
                color: Theme.of(context).primaryColor,
                ),
                title: const Text("change language"),
                trailing: const Text("EN"),
              ),
            ),
          ),),
          ListTile(
            tileColor: Theme.of(context).disabledColor.withOpacity(0.1),
            leading: Icon(Icons.help_rounded ,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text("help"),

          ),
          Padding( padding: const EdgeInsets.symmetric(vertical: 8), child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: (){},
              child: ListTile(
                tileColor: Theme.of(context).disabledColor.withOpacity(0.1),
                leading: Icon(Icons.info_outline_rounded ,
                  color: Theme.of(context).primaryColor,
                ),
                title: const Text("About the app"),
              ),
            ),
          ),),
          Padding( padding: const EdgeInsets.symmetric(vertical: 8), child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: (){controller.userModel.},
              child: ListTile(
                tileColor: Theme.of(context).disabledColor.withOpacity(0.1),
                leading: Icon(Icons.logout_rounded ,
                  color: Theme.of(context).primaryColor,
                ),
                title: const Text("Logout"),
              ),
            ),
          ),),

        ],
      ),
    ),
  );
  }
}
