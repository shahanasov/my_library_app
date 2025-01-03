import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_library/custom/theme.dart';

Widget textfield(
    {required TextEditingController controller, String? hint, String? label}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      hintText: hint ?? 'Type here',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide.none
      ),
      filled: true,
      fillColor: AppTheme().lightGrey,
    ),
  );
}

Widget passwordfield({
  required TextEditingController controller,
}) {
  final obscurePassword = true.obs;
  return Obx(() => TextFormField(
        obscureText: obscurePassword.value,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: IconButton(onPressed: () => obscurePassword.toggle(),
           icon:  Icon(obscurePassword.value? Icons.visibility : Icons.visibility_off) ),
          hintText: 'Your Password',
         border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide.none
      ),
          filled: true,
          fillColor: AppTheme().lightGrey,
        ),
      ));
}
