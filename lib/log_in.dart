import 'package:batch_d_demo/my_home_page.dart';
import 'package:batch_d_demo/utills/all_colors.dart';
import 'package:flutter/material.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}
// for global variables
late String email;
String _email= "jannatsuha@gmail.com";
String _password= "123456";
TextEditingController emailCont= TextEditingController();
TextEditingController passCont= TextEditingController();

final _formKey= GlobalKey<FormState>();

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    double h= MediaQuery.of(context).size.height;
    double w= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: Colors.teal.shade100,
        child: Padding(
          padding:  EdgeInsets.only(
              top: h*0.09,
              left: w*0.07,
              right: w*0.07
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Icon(Icons.account_circle_sharp,
                color: AllColors.appThemeColor,
                size: h*0.08+ w*0.08,),
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                  controller: emailCont,
                  validator: (text){
                    if(text == null || text.isEmpty){
                      return "The Field is Empty";
                    }
                    else if(text != _email){
                      return "Invalid Email";
                    }
                  },
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: AllColors.appThemeColor
                    ),
                    hintText: "Enter Your Email",
                    suffixIcon: Icon(Icons.email_rounded,
                    color: AllColors.appThemeColor,),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AllColors.appThemeColor
                        )
                    ),
                    border: OutlineInputBorder
                      (
                        borderSide: BorderSide(
                            color: AllColors.appThemeColor
                        ),
                    )
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: passCont,
                  validator: (text){
                    if(text == null || text.isEmpty){
                      return "The Field is Empty";
                    }
                    else if(text != _password){
                      return "Invalid Password";
                    }
                  },
                  obscureText: true,
                  autofocus: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: AllColors.appThemeColor
                      ),
                      hintText: "Enter Your Password",
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: AllColors.appThemeColor,),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AllColors.appThemeColor
                          )
                      ),
                      border: OutlineInputBorder
                        (
                        borderSide: BorderSide(
                            color: AllColors.appThemeColor
                        ),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AllColors.appThemeColor
                  ),
                    onPressed: (){
                    email= emailCont.text;
                    if(_formKey.currentState!.validate()){
                      Navigator.push(context,
                      MaterialPageRoute(builder:(context)
                      =>MyHomePage()));
                    }
                    },
                    child: Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.login),
                          SizedBox(width: 8,),
                          Text("LOG IN",style: TextStyle(
                            fontSize: 20
                          ),),
                        ],
                      ),
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
