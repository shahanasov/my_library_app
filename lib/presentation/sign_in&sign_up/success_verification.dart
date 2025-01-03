import 'package:flutter/material.dart';
import 'package:my_library/custom/theme.dart';
import 'package:my_library/widgets/buttons.dart';

class SignUpSuccessVerification extends StatelessWidget {
  const SignUpSuccessVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 10,
        children: [
          Image.asset('assets/images/congratsbox.png'),
          Text('Congratulation!'),
          Text(
              'your account is complete, please enjoy the\nbest menu from us.'),
          buttonforAll(context: context, hint: 'Get Started')
        ],
      ),
    );
  }
}
