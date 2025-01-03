import 'package:flutter/material.dart';
import 'package:my_library/custom/theme.dart';
import 'package:my_library/widgets/buttons.dart';
import 'package:my_library/widgets/textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    List<Widget> widgetsList=[
Text(
        'Sign Up',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text('Create account and choose favorite menu',style: TextStyle(color: AppTheme().grey,
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
        ),),
        textfield(controller: controller,hint: 'Your Name'),
        textfield(controller: controller,hint: 'Your Email'),
        textfield(controller: passwordController),
        buttonforAll(context: context,hint:'Register'),
        Text('Have an account? Sign In'),
        Text('By clicking Register, you agree to our '),
        Text('Terms and Data Policy.',style: TextStyle(color: Colors.blue),)
    ];
   return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgetsList),
      ),
    );
  }
}