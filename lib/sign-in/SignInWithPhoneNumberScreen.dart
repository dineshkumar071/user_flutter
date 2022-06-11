import 'package:country_calling_code_picker/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcart/sign-in/SignInWithEmailScreen.dart';

class SignInWithPhoneNumber extends StatefulWidget{
  @override
  _SignInPhoneState createState() => _SignInPhoneState();
}

class _SignInPhoneState extends State<SignInWithPhoneNumber>{

  final TextEditingController mobileNumber = TextEditingController();
  var _selectedCountry;

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
              child: Text("Good to see you",style: TextStyle(
                  color: Color(0xff0893d1),
                  fontSize: 18.00,
                  decoration: TextDecoration.none
              ),),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.00,left: 30.00,right: 30.00),
              child: Row(
                children: [
                  Container(
                      width: 50.00,
                      height: 45.00,
                      padding: EdgeInsets.all(10.00),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xfff1f1f1)
                          ),
                          borderRadius: BorderRadius.circular(2.00)
                      ),
                      child: GestureDetector(
                        onTap: () {
                          _showCountryPicker();
                        },
                        child: new Text("+91"),
                      )
                  ),
                  Expanded(child: Container(
                    margin: EdgeInsets.only(left: 4.00),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xfff1f1f1)
                        ),
                        borderRadius: BorderRadius.circular(2.00)
                    ),
                    height: 45.00,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: mobileNumber,
                      maxLength: 10,
                      decoration: InputDecoration(
                        icon: Icon(Icons.phone_iphone),
                        hintText: "Mobile Number",
                        border: InputBorder.none,
                        counterText: "",
                      ),
                    ),
                  )),
                ],
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
                onPressed:register,
                child: Text("Continue".toUpperCase()),
                textColor: Colors.white,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30.00,left: 30.00,right: 30.00),
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text("Log In with Email",style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.00,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold
                ),
                  textAlign: TextAlign.right,
                ),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignInWithEmailScreen()));
                },
              ),
            )
          ],
        )
        )
    );
  }

  void _showCountryPicker() async{
    final country = await showCountryPickerDialog(context,);
    setState(() {
      _selectedCountry = country;
    });
  }

  Future<void> normalSignIn() async{

  }

  Future<void> register() async{

  }
}