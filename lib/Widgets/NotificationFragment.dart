import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcart/Widgets/NotificationWidget.dart';

class NotificationFragment extends StatefulWidget{
  @override
  _NotificationFragmentState createState() => _NotificationFragmentState();
  const NotificationFragment({Key? key}) : super(key: key);
}
class _NotificationFragmentState extends State<NotificationFragment>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: 8,itemBuilder: (context,index){
        return NotificationWidget(imagePath: '', onClicked: (){

        });
      })

    );
  }
}