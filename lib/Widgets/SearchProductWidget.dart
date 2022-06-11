import 'package:flutter/cupertino.dart';

class SearchProductWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  const SearchProductWidget(
      {Key? key, required this.imagePath, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffe9e9e9),
          ),
          borderRadius: BorderRadius.circular(1.00)),
      height: 120.00,
      child: Row(
        children: [
          Container(
            width: 120.00,
            height: 100,
            child: Image.asset(imagePath),
          ),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20.00),
                  child: Text('Product Name'),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 5.00),
                  child: Text('Category Type'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.00),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(child: Text('1920')),
                      Expanded(child: Text('3000'))
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 5.00),
                  child: Text(
                    '70% Offer',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Color(0xff0893d1)),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
