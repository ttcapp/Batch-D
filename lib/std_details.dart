import 'package:flutter/material.dart';

class StdDetails extends StatefulWidget {
  String text;
  String img;
  StdDetails({Key? key,required this.text,
    required this.img}) :super(key: key);

  @override
  _StdDetailsState createState() => _StdDetailsState();
}

class _StdDetailsState extends State<StdDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Student Details"),
      ),
      body: Column(
        children: [
          Image.asset(widget.img),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(widget.text,
            style: TextStyle(
              color: Colors.green,fontSize: 30
            ),),
          )
        ],
      ),
    );
  }
}
