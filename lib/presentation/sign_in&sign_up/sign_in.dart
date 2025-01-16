import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_library/custom/theme.dart';
import 'package:my_library/presentation/bottom_navigation/bottom_nav.dart';
import 'package:my_library/widgets/buttons.dart';
import 'package:my_library/widgets/textfield.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    List<Widget> widgetsList = [
      Text(
        'Welcome Back 👋',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'Sign to your account',
        style: TextStyle(
          color: AppTheme().grey,
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
        ),
      ),
      Text(
        'Email',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
      ),
      textfield(controller: controller, hint: 'Your email'),
      Text('Password'),
      passwordfield(controller: passwordController),
      Text('Forgot Password?'),
      buttonforAll(
          hint: 'Login', context: context, color: AppTheme().mainColor),
      Row(
        children: [
          Text("Don't have an account?"),
          TextButton(
            child: Text(
              'Sign Up',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: () {
              Get.to(LandingPage());
            },
          )
        ],
      ),
      Divider(),
      signinWithButton('Google'),
      signinWithButton('Apple')
    ];

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgetsList),
        ),
      ),
    );
  }
}
