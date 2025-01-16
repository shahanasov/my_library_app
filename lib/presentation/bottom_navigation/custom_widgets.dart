import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_library/controller/nav/bottom_nav_controller.dart';
import 'package:my_library/custom/theme.dart';

buildBottomNavigationMenu(
    context, LandingPageController landingPageController) {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: AppTheme().grey, fontWeight: FontWeight.w500, fontSize: 12);

  final TextStyle selectedLabelStyle =
      TextStyle(color: AppTheme().mainColor, fontWeight: FontWeight.w500, fontSize: 12);

  return SizedBox(
    child: Obx(() => 
       BottomNavigationBar(
        useLegacyColorScheme: false,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        onTap: landingPageController.tabIndex.call,
        currentIndex: landingPageController.tabIndex.value,
        //   type: BottomNavigationBarType.fixed,
        // backgroundColor: AppTheme().mainColor,
        unselectedItemColor: AppTheme().grey,
        selectedItemColor: AppTheme().mainColor,
        unselectedLabelStyle: unselectedLabelStyle,
        selectedLabelStyle: selectedLabelStyle,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.description), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
    ),
  );
}
