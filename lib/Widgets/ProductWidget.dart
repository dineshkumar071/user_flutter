import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  const ProductWidget(
      {Key? key, required this.imagePath, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xfff1f1f1)),
          borderRadius: BorderRadius.circular(2.00)),
        child: Column(
          children: [
            Expanded(child:  Container(
              width: double.infinity,
              height: 90.00,
              child: Image.asset('assets/images/shoe.jpg'),
            )),
            Container(
              margin: EdgeInsets.only(left: 5.00,right: 5.00),
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(child: Text('Product Name')),
                  Icon(
                    Icons.favorite,
                    color: Color(0xff717171),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5.00,right: 5.00),
              width: double.infinity,
              child: Text('Price'),
            ),
            Divider(
              thickness: 1.00,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 5.00,right: 5.00),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    child: Text('3000'),
                  )),
                  Expanded(
                      child: Container(
                    child: Text('2000'),
                  ))
                ],
              ),
            ),
           Container(
             height: 30.00,
             alignment: Alignment.centerLeft,
             margin: EdgeInsets.only(top: 20.00,left: 5.00,right: 5.00,bottom: 10.00),
             child:  FlatButton(
               onPressed: () {},
               child: Text('70% off',style: TextStyle(color: Colors.white),),
               color: Color(0xff0893d1),
             ),
           )
          ],
        ),
      );
  }
}
