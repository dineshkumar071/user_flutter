import 'package:country_calling_code_picker/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcart/Widgets/UserProfile.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController userName = TextEditingController();
  final TextEditingController eMail = TextEditingController();
  final TextEditingController mobileNumber = TextEditingController();
  var _selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 100.00, right: 30.00, left: 30.00),
                child: Text(
                  "Edit Profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff0893d1),
                      fontSize: 22.00,
                      decoration: TextDecoration.none),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 10.00, right: 30.00, left: 30.00),
                child: Text(
                  "Looking good! Feel free to make changes to your profile.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff0893d1),
                      fontSize: 18.00,
                      decoration: TextDecoration.none),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.00),
                child: UserProfile(
                  imagePath: "assets/images/profileimage.png",
                  onClicked: () async {},
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 40.00, right: 30.00, left: 30.00),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xfff1f1f1)),
                    borderRadius: BorderRadius.circular(2.00)),
                child: TextFormField(
                  controller: userName,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 14.00),
                    hintText: 'User Name',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xff686868),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50.00,
                margin: EdgeInsets.only(top: 20.00, right: 30.00, left: 30.00),
                decoration: BoxDecoration(
                    color: Color(0xff0893d1),
                    borderRadius: BorderRadius.circular(2.0)),
                child: MaterialButton(
                  height: 50.00,
                  onPressed: () {},
                  child: Text("Submit"),
                  textColor: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70.00, left: 30.00, right: 30.00),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xfff1f1f1)),
                          borderRadius: BorderRadius.circular(2.00)),
                      child: TextFormField(
                        controller: eMail,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 14.00),
                          hintText: 'Email',
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(0xff686868),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    )),
                    FlatButton(height: 45.00,onPressed: () {},color: Color(0xff0893d1), child: Text('Update',style: TextStyle(color: Colors.white),)),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(
                          top: 20.00, left: 30.00, right: 30.00),
                      child: Row(
                        children: [
                          Container(
                              width: 50.00,
                              height: 45.00,
                              padding: EdgeInsets.all(10.00),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xfff1f1f1)),
                                  borderRadius: BorderRadius.circular(2.00)),
                              child: GestureDetector(
                                onTap: () {
                                  _showCountryPicker();
                                },
                                child: new Text("+91"),
                              )),
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(left: 4.00),
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xfff1f1f1)),
                                borderRadius: BorderRadius.circular(2.00)),
                            height: 45.00,
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              controller: mobileNumber,
                              maxLength: 10,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 5.00),
                                hintText: "Mobile Number",
                                border: InputBorder.none,
                                counterText: "",
                              ),
                            ),
                          )),
                          FlatButton(height:45.00,onPressed: () {},color: Color(0xff0893d1), child: Text('Update',style: TextStyle(color: Colors.white),)),
                        ],
                      ),
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showCountryPicker() async {
    final country = await showCountryPickerDialog(
      context,
    );
    setState(() {
      _selectedCountry = country;
    });
  }
}
