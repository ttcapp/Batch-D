import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}
double conHeight=50;
double conWidth=50;

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              onDoubleTap: (){
                setState(() {
                  conHeight=50;
                  conWidth=50;
                });
              },
              onTap: (){
                setState(() {
                  conHeight=250;
                  conWidth=250;
                });
              },
              child: Align(
                alignment: Alignment.center,
                child: AnimatedContainer(
                  height: conHeight,
                  width: conWidth,
                  color: Colors.red,
                    duration: Duration(milliseconds: 5000),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
