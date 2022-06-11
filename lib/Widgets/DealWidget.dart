import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DealWidget extends StatelessWidget{
  final String imagePath;
  final VoidCallback onClicked;

  DealWidget({Key? key,required this.imagePath,required this.onClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.00,right: 2.00),
      width: 250.00,
      height: 180.00,
      child:  Ink.image(
        image: AssetImage(imagePath),
    fit: BoxFit.cover,
    width: 250,
    height: 180,
    child: InkWell(
    onTap: onClicked,
    ),)
    );
  }
}