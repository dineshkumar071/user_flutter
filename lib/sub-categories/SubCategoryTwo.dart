import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcart/Widgets/CategoryWidget.dart';
import 'package:wcart/Widgets/ProductWidget.dart';

class SubCategoriesTwo extends StatefulWidget{

  @override
  _SubCategoriesTwoState createState() =>  _SubCategoriesTwoState();
}

class  _SubCategoriesTwoState extends State<SubCategoriesTwo>{
  List<String> imageUrls = [
    'https://wcartnode.webnexs.org/banner_image/5-6wcart.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('SubCategories',style: TextStyle(color: Colors.black),),
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
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                margin: EdgeInsets.only(left: 10.00,right: 10.00),
                child: Image.asset('assets/images/wcart_logo.png'),
              ),
              GridView.builder(
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                        padding: EdgeInsets.all(1.00),
                        child: CategoryWidget(
                            imagePath: 'assets/images/wcart_logo.png',
                            onClicked: () async {},
                            categoryName: 'category name'));
                  }),
              Container(
                width: double.infinity,
                height: 200.00,
                margin: EdgeInsets.only(
                    top: 10.00,left: 10.00,right: 10.00),
                child: Image.asset(''),
              ),
              Container(
                width: double.infinity,
                height: 55.00,
                margin: EdgeInsets.only(
                    top: 20.00,left: 10.00,right: 10.00),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                          'Suggestion For You',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.00),
                        )),
                    FlatButton(
                      onPressed: (){

                      },
                      child: Text(
                        'View All',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      color: Color(0xff0893d1),
                      textColor: Colors.white,
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child:  GridView.builder(
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.9,
                        crossAxisCount: 2,
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 4.0
                    ),
                    itemCount: 9,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return ProductWidget(onClicked: () {  }, imagePath: '',);
                    }),
                margin: EdgeInsets.only(left: 5.00,right: 5.00),
              ),
            ],
          ),
        ),
      ),
    );

  }
}