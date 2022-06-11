import 'package:flutter/cupertino.dart';

class TopSelectionWidget extends StatelessWidget{
  final String imagePath;
  final VoidCallback onClicked;

  const TopSelectionWidget(
      {Key? key, required this.imagePath, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 230,
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Image.asset(imagePath),
            ),
          ),
          Container(
            width: double.infinity,
            child: Text('12345'),
          )

        ],
      ),
    );
  }
}