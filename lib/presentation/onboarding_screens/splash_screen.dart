import 'package:flutter/material.dart';
import 'package:my_library/custom/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().mainColor,
    );
  }
}