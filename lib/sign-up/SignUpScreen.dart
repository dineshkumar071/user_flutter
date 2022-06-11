import 'package:country_calling_code_picker/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcart/Widgets/UserProfile.dart';

class SignUpScreen extends StatefulWidget{
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUpScreen>{

  final TextEditingController userName = TextEditingController();
  final TextEditingController eMail = TextEditingController();
  final TextEditingController passWord = TextEditingController();
  final TextEditingController confirmPassWord = TextEditingController();
  final TextEditingController mobileNumber = TextEditingController();
  var _selectedCountry;
  String radioButtonItem = 'ONE';
  int id = 1;
  final TextEditingController dob = TextEditingController();
  int val = -1;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 120.00,right: 30.00,left: 30.00),
              alignment: AlignmentDirectional.center,
              child: Text("Sign Up",style: TextStyle(
                  color: Color(0xff0893d1),
                  fontSize: 22.00,
                  decoration: TextDecoration.none
              ),),
            ),
            Container(
              width: double.infinity,
              alignment: AlignmentDirectional.center,
              margin: EdgeInsets.only(top: 10.00,right: 30.00,left: 30.00),
              child: Text("Good to have you on board",style: TextStyle(
                  color: Color(0xff0893d1),
                  fontSize: 18.00,
                  decoration: TextDecoration.none
              ),),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.00),
              child:UserProfile(
                imagePath : "assets/images/profileimage.png",
                onClicked : () async{},
              ),
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
                controller: userName,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontSize: 14.00
                  ),
                  hintText:'User Name',
                  prefixIcon: Icon(Icons.person,color: Color(0xff686868),),
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
              margin: EdgeInsets.only(top: 10.00,right: 30.00,left: 30.00),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0xfff1f1f1)
                  ),
                  borderRadius: BorderRadius.circular(2.00)
              ),
              child: TextFormField(
                controller: confirmPassWord,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontSize: 14.00
                  ),
                  hintText:'Confirm Password',
                  prefixIcon: Icon(Icons.lock,color: Color(0xff686868),),
                  suffixIcon : Icon(Icons.remove_red_eye,color: Color(0xff686868),),
                  border: InputBorder.none,
                ),
              ),
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
              margin: EdgeInsets.only(top: 10.00,right: 30.00,left: 30.00),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0xfff1f1f1)
                  ),
                  borderRadius: BorderRadius.circular(2.00)
              ),
              child: TextFormField(
                controller: dob,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontSize: 14.00
                  ),
                  hintText:'Date of Birth',
                  prefixIcon: Icon(Icons.calendar_today_outlined,color: Color(0xff686868),),
                  suffixIcon : Icon(Icons.calendar_today,color: Color(0xff686868),),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50.00,
              margin: EdgeInsets.only(top: 10.00,right: 30.00,left: 30.00),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: 1,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'ONE';
                        id = 1;
                      });
                    },
                  ),
                  Text(
                    'Male',
                    style: new TextStyle(fontSize: 17.0),
                  ),

                  Radio(
                    value: 2,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'TWO';
                        id = 2;
                      });
                    },
                  ),
                  Text(
                    'Female',
                    style: new TextStyle(
                      fontSize: 17.0,
                    ),
                  ),

                  Radio(
                    value: 3,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'THREE';
                        id = 3;
                      });
                    },
                  ),
                  Text(
                    'Other',
                    style: new TextStyle(fontSize: 17.0),
                  ),
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
            )
          ],
        ),
      ),
    );
  }

  void _showCountryPicker() async{
    final country = await showCountryPickerDialog(context,);
    setState(() {
      _selectedCountry = country;
    });
  }

  Future<void> register() async{

  }
}

