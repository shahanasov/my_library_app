import 'package:flutter/material.dart';
import 'package:my_library/custom/theme.dart';

Widget boarding({required String image,required String heading,required String text}) {
  return Column(spacing: 20,
    children: [
      Image.asset(image,height: 320,width: 320,),
      SizedBox(height: 10,),
      Text(
       heading,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      Text(
       text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          height: 1.5,
          fontWeight: FontWeight.normal,
          color: AppTheme().grey,
        ),
      )
    ],
  );
}
