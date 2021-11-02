import 'package:batch_d_demo/utills/all_colors.dart';
import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}
String avatarSrc= "https://thumbs.dreamstime.com/z/user-icon-9233164.jpg";
class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appBarClr,
        title: Text("Second Page"),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 150,
                    width: 150,
                    child: Image.network(avatarSrc)
                ),
                Container(
                    height: 150,
                    width: 150,
                    child: Image.network(avatarSrc)
                ),
                Container(
                    height: 150,
                    width: 150,
                    child: Image.network(avatarSrc)
                ),
                Container(
                    height: 150,
                    width: 150,
                    child: Image.network(avatarSrc)
                ),
                Container(
                    height: 150,
                    width: 150,
                    child: Image.network(avatarSrc)
                ),
                Container(
                    height: 150,
                    width: 150,
                    child: Image.network(avatarSrc)
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
