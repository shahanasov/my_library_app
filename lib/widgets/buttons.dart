import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_library/custom/theme.dart';
import 'package:my_library/presentation/sign_in&sign_up/sign_in.dart';

Widget boardingpagebutton(
    {required BuildContext context, String? hint, Color? color}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          fixedSize: Size(327, 56),
          backgroundColor: color ?? AppTheme().lightBlue),
      onPressed: () {
        Get.off(() => SignIn());
      },
      child: Text(hint ?? 'Button',
          style: TextStyle(
            color: color == null ? AppTheme().mainColor : AppTheme().whiteColor,
          )));
}

Widget buttonforAll(
    {required BuildContext context, String? hint, Color? color}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          fixedSize: Size(327, 48),
          backgroundColor: color ?? AppTheme().lightBlue),
      onPressed: () {},
      child: Text(hint ?? 'Button',
          style: TextStyle(
            color: color == null ? AppTheme().mainColor : AppTheme().whiteColor,
          )));
}

Widget signinWithButton(String text) {
  return OutlinedButton(
      style: OutlinedButton.styleFrom(
          fixedSize: Size(327, 48),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))),
      onPressed: () {},
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            text == 'Google'
                ? 'assets/images/googlelogo.png'
                : 'assets/images/appleLogo.png',
            height: 25,
            width: 25,
          ),
          Text(
            "Sign in with $text",
            style: TextStyle(color: Colors.black),
          )
        ],
      ));
}
