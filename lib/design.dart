import 'package:flutter/material.dart';
class DesignPage extends StatefulWidget {
  const DesignPage({Key? key}) : super(key: key);

  @override
  _DesignPageState createState() => _DesignPageState();
}

class _DesignPageState extends State<DesignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Design Page"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
                itemBuilder: (context,index){
              return  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all()
                  ),
                  child: Center(
                      child: Text("Masud",style:
                      TextStyle(fontSize: 20),)
                  ),
                ),
              );
            }),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: 50,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      child: ElevatedButton(
                          onPressed: (){

                          },
                          child: Text("uhdsikd")),
                    ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
