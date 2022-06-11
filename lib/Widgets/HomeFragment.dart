import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcart/Widgets/CategoryWidget.dart';
import 'package:wcart/Widgets/DealWidget.dart';
import 'package:wcart/Widgets/ImageSliderWidget.dart';
import 'package:wcart/Widgets/OfferWidget.dart';
import 'package:wcart/Widgets/TopSelectionWidget.dart';
import 'package:wcart/sub-categories/SubCategoriesOne.dart';

class HomeFragment extends StatefulWidget {
  @override
  _HomeFragmentState createState() => _HomeFragmentState();

  const HomeFragment({Key? key}) : super(key: key);
}

class _HomeFragmentState extends State<HomeFragment> {
  List<String> imageUrls = [
    'https://wcartnode.webnexs.org/banner_image/5-6wcart.png'
  ];
  final ValueNotifier<int> _pageNotifier = new ValueNotifier<int>(0);
  final PageController _pageController = new PageController();
  final TextEditingController searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.00,right: 10.00),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
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
                              color: Color(0xff717171),
                            ),
                            suffixIcon: Icon(
                              Icons.keyboard_voice,
                              color: Color(0xff717171),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                             top: 10.00),
                        child: ImageSliderWidget(
                            imageUrls: imageUrls,
                            imageBorderRadius: BorderRadius.circular(2.00)),
                      ),
                      Container(
                        width: double.infinity,
                        height: 120.00,
                        margin: EdgeInsets.only(
                             top: 10.00),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (BuildContext mContext, int index) {
                              return CategoryWidget(
                                  imagePath: 'assets/images/wcart_logo.png',
                                  onClicked: () async {
                                    Navigator.push(context,MaterialPageRoute(builder: (context) => SubCategoriesOne()));
                                  },
                                  categoryName: 'category name');
                            }),
                      ),
                      Container(
                        width: double.infinity,
                        height: 55.00,
                        margin: EdgeInsets.only(
                             top: 20.00),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              'Top Offers',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.00),
                            )),
                            FlatButton(
                              onPressed: viewAll,
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
                        margin: EdgeInsets.only(
                            top: 5.00),
                        width: double.infinity,
                        height: 60.00,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (BuildContext mContext, int index) {
                              return OfferWidget(
                                onClicked: () {},
                                imagePath: 'assets/images/green_land.png',
                              );
                            }),
                      ),
                      Container(
                        width: double.infinity,
                        height: 55.00,
                        margin: EdgeInsets.only(
                             top: 20.00),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              'Top Deals',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.00),
                            )),
                            FlatButton(
                              onPressed: viewAll,
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
                        margin: EdgeInsets.only(
                             top: 5.00),
                        width: double.infinity,
                        height: 95.00,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (BuildContext mContext, int index) {
                              return DealWidget(
                                onClicked: () {},
                                imagePath: 'assets/images/shoe.jpg',
                              );
                            }),
                      ),
                      Container(
                        width: double.infinity,
                        height: 55.00,
                        margin: EdgeInsets.only(
                             top: 20.00),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              'Top Selection',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.00),
                            )),
                            FlatButton(
                              onPressed: viewAll,
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
                      GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          itemCount: 9,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.all(1.00),
                              child: TopSelectionWidget(
                                  imagePath: 'assets/images/shoe.jpg',
                                  onClicked: () async {}),
                            );
                          }),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Future<void> viewAll() async {}
}
