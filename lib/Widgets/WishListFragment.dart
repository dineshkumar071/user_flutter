import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcart/Widgets/WishListWidget.dart';

class WishListFragment extends StatefulWidget{
  @override
  _WishListFragmentState createState() => _WishListFragmentState();
  const WishListFragment({Key? key}) : super(key: key);
}

class _WishListFragmentState extends State<WishListFragment>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 5.00,left: 10.00,right: 10.00),
        child: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height /1.5),), itemBuilder: (context,index){
          return WishListWidget(imagePath: 'assets/images/shoe.jpg', onClicked: (){

          });
        }),
      )
    );
  }
}