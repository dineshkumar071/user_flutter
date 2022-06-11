import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishListWidget extends StatelessWidget{
  final String imagePath;
  final VoidCallback onClicked;

  WishListWidget(
      {Key? key, required this.imagePath, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
         Expanded(
           flex: 4,
           child:  Container(
           width: double.infinity,
           child: Image.asset(imagePath),
         ),
         ),
          Container(
            margin: EdgeInsets.only(top: 5,left: 5),
            width: double.infinity,
            child: Text('Product Name'),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.00,left: 5.00,bottom: 5),
            width: double.infinity,
            child: Text('Price'),
          ),
          Expanded(flex: 1,
              child: Container(
            width: double.infinity,
            child: MaterialButton(
              color: Color(0xff0893d1),
              onPressed: (){

              },
              child: Text('Buy Now',style: TextStyle(color: Colors.white),),
            ),
          ))
        ],
      ),
    );
  }
}