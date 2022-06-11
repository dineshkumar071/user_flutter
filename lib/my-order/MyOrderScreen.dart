
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcart/Widgets/OrderWidget.dart';

class MyOrderScreen extends StatefulWidget{
  _MyOrderScreen createState() => _MyOrderScreen();
}

class _MyOrderScreen extends State<MyOrderScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Products',style: TextStyle(color: Colors.black),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Color(0xff0893d1),),
            onPressed: (){

            },
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.shopping_cart,
                    color: Color(0xff0893d1),
                   ),
                )
            ),
          ]
      ),
      body: SingleChildScrollView(
        child: Container(
          child: OrderWidget(imagePath: '', onClicked: () {  },),
        ),
      ),
    );
  }
}