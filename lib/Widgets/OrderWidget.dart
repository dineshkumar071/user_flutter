import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class OrderWidget extends StatefulWidget{

  final String imagePath;
  final VoidCallback onClicked;

  const OrderWidget(
      {Key? key, required this.imagePath, required this.onClicked})
      : super(key: key);

  @override
  _OrderWidgetState createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 70.00,
            height: 160.00,
            child: Image.asset(''),
          ),
          Expanded(child: Column(
            children: [
              Text('Product Name'),
              Text('Rated Delivery'),
              SmoothStarRating( allowHalfRating: false,
                  onRated: (v) {
                  },
                  starCount: 5,
                  rating: rating,
                  size: 40.0,
                  isReadOnly:true,
                  filledIconData: Icons.blur_off,
                  halfFilledIconData: Icons.blur_on,
                  color: Color(0xff0893d1),
                  borderColor:Color(0xff0893d1),
                  spacing:0.0),
               ],
          )),
          Icon(Icons.chevron_right,color: Color(0xff717171),)
        ],
      ),
    );
  }
}