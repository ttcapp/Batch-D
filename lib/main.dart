import 'package:batch_d_demo/log_in.dart';
import 'package:batch_d_demo/my_home_page.dart';
import 'package:batch_d_demo/second_page.dart';
import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
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
      home: LogIn(),

    );
  }
}
