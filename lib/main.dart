import 'package:batch_d_demo/log_in.dart';
import 'package:batch_d_demo/my_home_page.dart';
import 'package:batch_d_demo/second_page.dart';
import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final navigatorKey= GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: SlideDrawer(
        offsetFromRight: 50,
        items: [
          MenuItem('Home',
              icon: Icons.account_balance,
              onTap: (){}),
          MenuItem('Second Page',
              icon: Icons.visibility,
              onTap: (){
            navigatorKey.currentState!.push(MaterialPageRoute
              (builder: (context)=>SecondPage()));
              }),
          MenuItem('Third Page',
              icon: Icons.ac_unit,
              onTap: (){}),
          MenuItem('Profile',
              icon: Icons.account_circle_rounded,
              onTap: (){}),
          MenuItem('Setting',
              icon: Icons.settings,
              onTap: (){}),
        ],
        child: LogIn(),
      ),
    );
  }
}
