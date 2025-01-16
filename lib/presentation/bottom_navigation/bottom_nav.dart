import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_library/controller/nav/bottom_nav_controller.dart';
import 'package:my_library/presentation/bottom_navigation/custom_widgets.dart';
import 'package:my_library/presentation/home/home_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LandingPageController controller= Get.put(LandingPageController(),permanent: false);
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationMenu(context, controller),
      body: Obx(()=> IndexedStack(
        index: controller.tabIndex.value,
        children: [
          HomePage(),
          Container(color: Colors.blue,
            child: Text('category'),),
          Container(color:   const Color.fromARGB(255, 30, 31, 32),
            child: Text('cart'),),
          Container(color: const Color.fromARGB(255, 111, 125, 136),
            child: Text('profile'),)
        ],
      )),
    );
  }
}
