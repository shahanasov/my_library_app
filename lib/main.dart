import 'package:flutter/material.dart';
import 'package:my_library/presentation/onboarding_screens/page_one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      title: 'My Library',
      home: OnBoardingOne(),
    );
  }
}
