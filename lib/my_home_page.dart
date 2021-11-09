import 'package:batch_d_demo/listview_page.dart';
import 'package:batch_d_demo/log_in.dart';
import 'package:batch_d_demo/second_page.dart';
import 'package:batch_d_demo/third_page.dart';
import 'package:batch_d_demo/utills/MenuWidget.dart';
import 'package:batch_d_demo/utills/all_colors.dart';
import 'package:batch_d_demo/utills/all_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:slide_drawer/slide_drawer.dart';

String imgSrcAvatar="https://previews.123rf.com/images/pandavector/pandavector1704/pandavector170406094/76736955-girl-icon-flat-single-avatar-peaople-icon-from-the-big-avatar-flat-.jpg";

class MyHomePage extends StatefulWidget {
   MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
GlobalKey<SliderMenuContainerState> _key =
new GlobalKey<SliderMenuContainerState>();
String title= "Home";

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    title = "Home";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;

    return Scaffold(
      body:
      SliderMenuContainer(
        appBarColor: Colors.teal,
        key: _key,
        sliderMenuCloseSize: 0,
        title: Text("Profile",style: TextStyle(color: Colors.white,
            fontSize: width*0.055,fontWeight: FontWeight.w800),),
        shadowColor: Colors.transparent,
        drawerIconColor: Colors.white,
        drawerIconSize: width*0.08,
        //slideDirection: Slider.RIGHT_TO_LEFT,
        //appBarPadding: const EdgeInsets.only(top: 10),
        sliderMenuOpenSize: 300,
        appBarHeight: 100,
        appBarPadding: EdgeInsets.fromLTRB(0, 40, 0, 0),
        sliderMenu:
        MenuWidget(
          //  onProfilePictureClick: () {},
          onItemClick: (title) {
            _key.currentState!.closeDrawer();
            setState(() {
              title = title;
              if(title=="Friend Lists")
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              }
              else if(title=="Setting")
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                );
              }
              else if(title=="List Show")

              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:
                      (context) => ListViewPage()),
                );
              }
              else if(title=="LogOut")
              {

              }
              else if(title=="Notification")
              {

              }
            });
          },
        ),
        sliderMain:
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage
                ("assets/images/img6.png"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter
              .mode(Colors.black12.withOpacity(0.2),
              BlendMode.dstATop))
        ),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>LogIn()));
                },
                child: Text("LOG IN")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ListViewPage()));
                },
                child: Text("Go To Third Page")
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: width*0.25,
                    width: width*0.25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            imgSrcAvatar
                          )
                      ),
                      borderRadius: BorderRadius.circular(180),
                      border: Border.all(
                          width: 3,
                          color:Colors.deepOrangeAccent
                      )
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Spacer(),
                            Column(
                              children: [
                                Text(AllStrings.post3405,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                Text(AllStrings.posts),
                              ],
                            ),

                            Spacer(),

                            Column(
                              children: [
                                Text(AllStrings.follower6k,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(AllStrings.followers),
                              ],
                            ),

                            Spacer(),
                            Column(
                              children: [
                                Text(AllStrings.following246,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(AllStrings.following),
                              ],
                            ),
                            Spacer(),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Spacer(),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,bottom: 5,left: 25,right: 25
                                  ),
                                  child: Text(AllStrings.message),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  )
                                ),
                              ),
                              Spacer(),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,bottom: 5,left: 5,right: 5
                                  ),
                                  child: Icon(Icons.account_circle,
                                  size: 15,)
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  )
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context)=>SecondPage()));
                },
                child: Text(AllStrings.goToNextPage)
            )
          ],
        ),
      ),
      ),
    );
  }
}
