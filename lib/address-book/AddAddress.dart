
import 'package:country_calling_code_picker/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAddress extends StatefulWidget{
  @override
  _AddAddressState createState()=> _AddAddressState();
}

class _AddAddressState extends State<AddAddress>{

  final TextEditingController userName = TextEditingController();
  final TextEditingController eMail = TextEditingController();
  final TextEditingController mobileNumber = TextEditingController();
  final TextEditingController addressOne = TextEditingController();
  final TextEditingController addressTwo = TextEditingController();
  final TextEditingController city = TextEditingController();
  final TextEditingController state = TextEditingController();
  final TextEditingController district = TextEditingController();
  final TextEditingController pinCode = TextEditingController();
  final TextEditingController landMark = TextEditingController();
  final TextEditingController country = TextEditingController();
  var _selectedCountry;
  int id = 1;
  bool value = false;
  String radioButtonItem = 'ONE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 120.00,right: 30.00,left: 30.00),
                child: Text("Address",style: TextStyle(
                    color: Color(0xff0893d1),
                    fontSize: 22.00,
                    decoration: TextDecoration.none
                ),),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 10.00,right: 30.00,left: 30.00),
                child: Text("Hi Buddy Good to Have you",style: TextStyle(
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
                padding: EdgeInsets.only(left: 10.00),
                child: TextFormField(
                  controller: userName,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 14.00
                    ),
                    hintText:'User Name',
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
                      padding: EdgeInsets.only(left: 10.00),
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
                margin: EdgeInsets.only(top: 10.00,left: 30.00,right: 20.00),
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Container(
                    color: Color(0xff0893d1) ,
                    padding: EdgeInsets.all(10.00),
                    child: Text("Use Your Current Location",style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.00,
                        fontWeight: FontWeight.bold
                    ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  onPressed: (){

                  },
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
                padding: EdgeInsets.only(left: 10.00),
                child: TextFormField(
                  controller: addressOne,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 14.00
                    ),
                    hintText:'Address One',
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
                padding: EdgeInsets.only(left: 10.00),
                child: TextFormField(
                  controller: addressTwo,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 14.00
                    ),
                    hintText:'Address Two',
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
                padding: EdgeInsets.only(left: 10.00),
                child: TextFormField(
                  controller: city,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 14.00
                    ),
                    hintText:'City',
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
                padding: EdgeInsets.only(left: 10.00),
                child: TextFormField(
                  controller: district,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 14.00
                    ),
                    hintText:'District',
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
                padding: EdgeInsets.only(left: 10.00),
                child: TextFormField(
                  controller: state,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 14.00
                    ),
                    hintText:'State',
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
                padding: EdgeInsets.only(left: 10.00),
                child: TextFormField(
                  controller: country,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 14.00
                    ),
                    hintText:'Country',
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
                padding: EdgeInsets.only(left: 10.00),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: pinCode,
                  decoration: InputDecoration(

                    hintStyle: TextStyle(
                        fontSize: 14.00
                    ),
                    hintText:'Pin Code',
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
                padding: EdgeInsets.only(left: 10.00),
                child: TextFormField(
                  controller: landMark,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 14.00
                    ),
                    hintText:'Land Mark',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 55.00,
                margin: EdgeInsets.only(left: 30.00,right: 30.00,top: 10.00),
                child: Row(
                  children: [
                    Container(
                      child: Text('Address Type'),
                      margin: EdgeInsets.only(left: 5.00),
                    ),
                    SizedBox(width: 30,),
                    Row(
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
                          'Home',
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
                          'Office',
                          style: new TextStyle(
                            fontSize: 17.0,
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 20.00,right: 30.00),
                child: Row(
                  children: [
                    Checkbox(
                      value: this.value,
                      onChanged: (value){
                        setState(() {

                        });
                      }
                    ),
                    Expanded(child: Text('Make this address as default?'))
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
                  child: Text("Submit".toUpperCase()),
                  textColor: Colors.white,
                ),
              ),
              SizedBox(height: 40,)
            ],
          ),
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
