import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  const UserProfile(
      {Key? key, required this.imagePath, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
      children: [
        buildImage(),
        Positioned(
          child: buildEditIcon(Color(0xff0893d1)),
          bottom: 0,
          right: 4,
        )
      ],
    ));
  }

  Widget buildImage() {
    return ClipOval(
        child: Material(
      color: Colors.transparent,
      child: Ink.image(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
        width: 128,
        height: 128,
        child: InkWell(
          onTap: onClicked,
        ),
      ),
    ));
  }

  Widget buildEditIcon(Color color) =>
      buildCircle(all: 8.00, color: color, child: Icon(Icons.camera_alt,color: Colors.white,));

  Widget buildCircle(
          {required double all, required Color color, required Widget child}) =>
      ClipOval(
          child: Container(
        padding: EdgeInsets.all(all),
        color: color,
        child: child,
      ));
}
