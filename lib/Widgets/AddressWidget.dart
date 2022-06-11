
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressWidget extends StatelessWidget{
  final String address ;

  const AddressWidget({Key? key,required this.address}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.00),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xfff1f1f1)),
                borderRadius: BorderRadius.circular(2.00)
            ),
            padding: EdgeInsets.all(4.00),
            height: 100,
            child: Text('18,South perumal maistry street ,madurai',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16.00,
            ),
            maxLines: 4,),
          ),
          Container(
            width: double.infinity,
            height: 50.00,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xfff1f1f1)),
                borderRadius: BorderRadius.circular(2.00)
            ),
            child: Row(
              children: [
                Expanded(child: GestureDetector(
                  child:Text('Edit',textAlign: TextAlign.center,),
                  onTap: (){

                  },
                )),
                VerticalDivider(color: Color(0xfff1f1f1),thickness: 1,),
                Expanded(child: GestureDetector(
                  child:Text('Remove',textAlign: TextAlign.center,),
                  onTap: (){

                  },
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}