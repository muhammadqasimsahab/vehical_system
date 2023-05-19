import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:vehical_management/ui/auth/loginscreen/login_screen1.dart';

import '../../controller/home_screen_controller.dart';
import '../../utils/app_color.dart';
import '../table/form_controller.dart';
import '../table/table_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(Controller());
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.app_backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        // backgroundColor: Colors.white,
        title:
            const Text('Report Screen', style: TextStyle(color: Colors.black)),
        centerTitle: T,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: InkWell(
                  onTap: () {
                    Get.to(Table());
                  },
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            //Get.to(TableScreen());
                          },
                          child: const Icon(Icons.note_add)),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Add Recoder")
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {},
                        child:
                            const Icon(Icons.camera_alt, color: Colors.black)),
                    const SizedBox(width: 10),
                    const Text("About")
                  ],
                ),
              ),
            ],
            offset: const Offset(0, 100),
            color: Colors.grey,
            elevation: 2,
          ),
        ],
        bottom: TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white,
          controller: controller.controller,
          tabs: controller.myTabs,
        ),
      ),
      body: TabBarView(
        controller: controller.controller,
        children: controller.myTabs.map((Tab tab) {
          final String label = tab.text!.toLowerCase();

          return Center(
            child: Text(
              'This is the $label tab',
              style: const TextStyle(fontSize: 36),
            ),
          );
        }).toList(),
      ),
    );
  }
}
