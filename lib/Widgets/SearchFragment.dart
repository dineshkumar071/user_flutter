import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcart/Widgets/SearchProductWidget.dart';

class SearchFragment extends StatefulWidget{

  @override
  _SearchFragmentScreenState createState() => _SearchFragmentScreenState();
  const SearchFragment({Key? key}) : super(key: key);
}

class _SearchFragmentScreenState extends State<SearchFragment>{
  final TextEditingController searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SingleChildScrollView(
           child: Container(
             child: Column(
               children: [
                 Container(
                   width: double.infinity,
                   height: 55.00,
                   margin: EdgeInsets.only(right: 10.00, left: 10.00),
                   decoration: BoxDecoration(
                       border: Border.all(color: Color(0xfff1f1f1)),
                       borderRadius: BorderRadius.circular(2.00)),
                   child: TextFormField(
                     controller: searchText,
                     decoration: InputDecoration(
                       hintStyle: TextStyle(fontSize: 14.00),
                       hintText: 'Search',
                       prefixIcon: Icon(
                         Icons.search_outlined,
                         color: Color(0xff686868),
                       ),
                       suffixIcon: Icon(
                         Icons.keyboard_voice,
                         color: Color(0xff686868),
                       ),
                       border: InputBorder.none,
                     ),
                   ),
                 ),
                 Container(
                      height: (MediaQuery.of(context).size.height*3)/4,
                     child: ListView.builder(
                   itemCount: 10,
                     scrollDirection: Axis.vertical,
                     itemBuilder: (BuildContext mContext, int index){
                   return SearchProductWidget(imagePath: 'assets/images/green_land.png',  onClicked: () async {

                   });
                 }))
               ],
             ),
           ),
         ),
    );
  }
}