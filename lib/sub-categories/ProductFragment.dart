import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcart/Widgets/ProductWidget.dart';

class ProductFragment extends StatefulWidget{
  @override
  _ProductFragment createState() => _ProductFragment();
}
class _ProductFragment extends State<ProductFragment>{
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
                    Icons.notifications_active,
                    size: 26.0,
                    color: Color(0xff0893d1),
                  ),
                )
            ),
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
          margin: EdgeInsets.only(left: 10.00,right: 10.00,top: 10.00),
          child:  GridView.builder(
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.7,
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0
              ),
              itemCount: 20,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return ProductWidget(onClicked: () {  }, imagePath: '',);
              }),
        ),
      ),
    );
  }
}