import 'package:flutter/material.dart';

Widget button({String? hint}){
  return ElevatedButton(onPressed: (){

  }, child: Text(hint??'Button'));
}