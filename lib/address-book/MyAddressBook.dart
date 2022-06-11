import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcart/Widgets/AddressWidget.dart';
import 'package:wcart/address-book/AddAddress.dart';

class MyAddressBook extends StatefulWidget{

  @override
  _MyAddressBookState createState() => _MyAddressBookState();
}

class _MyAddressBookState extends State<MyAddressBook>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('My Address Book',style: TextStyle(color: Colors.black),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Color(0xff0893d1),),
          onPressed: (){

          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 45.00,
                padding: EdgeInsets.all(5.00),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xfff1f1f1)),
                    borderRadius: BorderRadius.circular(1.00)
                ),
                margin: EdgeInsets.only(top: 30.00,left: 20.00,right: 20.00),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddAddress()));
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 30.00,
                        height: 30.00,
                        child: Icon(Icons.add_location_rounded,color: Color(0xff717171),),
                      ),
                      SizedBox(
                        width: 10.00,
                      ),
                      Expanded(child: Text('Add New Address',)),
                      Container(width: 30.00,
                          height: 30.00,
                          child: Icon(Icons.chevron_right,color: Color(0xff717171),))
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.00,left: 20.00,right: 20.00),
                width: double.infinity,
                height: (MediaQuery.of(context).size.height*3)/4,
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context,index){
                      return AddressWidget(address: '');
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}