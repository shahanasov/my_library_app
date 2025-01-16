import 'package:flutter/material.dart';
import 'package:my_library/custom/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        appBar: AppBar(centerTitle: true,
          leading: IconButton(onPressed: (){
      
        }, icon: Icon(Icons.search)),
          title: Text('Home',style:AppTheme().sans,),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
          ],
        ),
      ),
    );
  }
}
