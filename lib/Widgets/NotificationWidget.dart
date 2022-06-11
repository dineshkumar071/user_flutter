import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  NotificationWidget(
      {Key? key, required this.imagePath, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(5.00),
        child: Row(
          children: [
            Container(
              width: 120.00,
              height: 180.00,
              child: Image.asset(imagePath),
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(left: 10.00),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Text('Product Name', textAlign: TextAlign.left),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 25.00),
                    child: Text('Price', textAlign: TextAlign.left),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40.00),
                    child: Row(
                      children: [
                        Container(
                          width: 30.00,
                          height: 30.00,
                          child: Icon(Icons.notifications_active,color: Color(0xff0717171),),
                        ),
                        Expanded(child: Text('7 days to go'))
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
