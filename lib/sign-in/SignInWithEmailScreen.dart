import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:wcart/Repository/Preference.dart';
import 'package:wcart/Repository/Repository.dart';
import 'package:wcart/Utility.dart';
import 'package:wcart/home/HomeScreen.dart';
import 'package:wcart/model/NormalSignInResponse.dart';
import 'package:wcart/sign-in/SignInWithPhoneNumberScreen.dart';

class SignInWithEmailScreen extends StatefulWidget{
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignInWithEmailScreen>{

  final TextEditingController eMail = TextEditingController();
  final TextEditingController passWord = TextEditingController();
  @override
  void initState() {
    PreferenceUtils.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 120.00,right: 30.00,left: 30.00),
              child: Text("Sign In",style: TextStyle(
                color: Color(0xff0893d1),
                fontSize: 22.00,
                  decoration: TextDecoration.none
              ),),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.00,right: 30.00,left: 30.00),
              child: Text("Log in for the best experience",style: TextStyle(
                color: Color(0xff0893d1),
                fontSize: 18.00,
                  decoration: TextDecoration.none
              ),),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 50.00,right: 30.00,left: 30.00),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0xfff1f1f1)
                  ),
                borderRadius: BorderRadius.circular(2.00)
              ),
              child: TextFormField(
                controller: eMail,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    fontSize: 14.00
                  ),
                  hintText:'Email',
                  prefixIcon: Icon(Icons.email,color: Color(0xff686868),),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.00,right: 30.00,left: 30.00),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0xfff1f1f1)
                  ),
                  borderRadius: BorderRadius.circular(2.00)
              ),
              child: TextFormField(
                controller: passWord,
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 14.00
                    ),
                    hintText:'Password',
                    prefixIcon: Icon(Icons.lock,color: Color(0xff686868),),
                    suffixIcon : Icon(Icons.remove_red_eye,color: Color(0xff686868),),
                    border: InputBorder.none,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30.00,right: 30.00,left: 30.00),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.00),
                color: Color(0xff0893d1),
              ),
              child: MaterialButton(
                height: 50.00,
                onPressed:(){
                    emailLogIn(context,eMail.text,passWord.text);
                  },
                child: Text("Continue".toUpperCase()),
                textColor: Colors.white,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30.00,left: 30.00,right: 30.00),
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text("Use Phone Number",style: TextStyle(
                  color: Colors.black,
                    fontSize: 12.00,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold
                ),
                  textAlign: TextAlign.right,
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignInWithPhoneNumber()));
                },
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 40.00,right: 30.00,top: 20.00),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have Account?",textAlign: TextAlign.right,),
                  Padding(padding: EdgeInsets.only(left: 10.00),
                  child:TextButton(
                    child: Text("Sign up",style: TextStyle(
                      color: Color(0xff0893d1),
                    )),
                    onPressed: normalSignIn,
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void emailLogIn(BuildContext context,String eMail,String passWord) async {

    bool isValidEmail = Utility().isValidEmail(eMail);

    if (eMail.isEmpty || passWord.isEmpty) {
      Toast.show("Please Enter the Email or password Field", context,
          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
    } else if (!isValidEmail) {
      Toast.show("Please Enter the valid Email", context,
          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
    }else{
      final json =   await Repository().emailLogin(eMail, passWord);
      if (json.status == "true"){
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        PreferenceUtils.setString("USER", jsonEncode(json.userDetails?.toJson()));
      }else{
        Toast.show(json.message, context,
            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      }
      print(json.toString());
    }
  }

  Future<void> normalSignIn() async{

  }
}