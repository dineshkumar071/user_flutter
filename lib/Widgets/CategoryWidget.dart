import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;
  final String categoryName;

  CategoryWidget({Key? key, required this.imagePath, required this.onClicked,required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.00,
      height: 85.00,
      margin: EdgeInsets.only(left: 2.00,right: 2.00),
      child: Column(
        children: [
          ClipOval(
              child: Material(
            color: Colors.transparent,
            child: Ink.image(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
              width: 90.00,
              height: 85.00,
              child: InkWell(
                onTap: onClicked,
              ),
            ),
          )),
          Center(
            child: Text(categoryName),
          )
        ],
      ),
    );
  }
}
