import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcart/Repository/Preference.dart';
import 'package:wcart/Widgets/HomeFragment.dart';
import 'package:wcart/Widgets/NotificationFragment.dart';
import 'package:wcart/Widgets/ProfileFragment.dart';
import 'package:wcart/Widgets/SearchFragment.dart';
import 'package:wcart/Widgets/WishListFragment.dart';
import 'package:wcart/model/NormalSignInResponse.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<HomeScreen> {

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeFragment(),
    SearchFragment(),
    WishListFragment(),
    NotificationFragment(),
    ProfileFragment()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  void initState() {
    PreferenceUtils.init();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var _key = GlobalKey<ScaffoldState>();
    final user = PreferenceUtils.getString('USER');
    if(user.isNotEmpty) {
      final userDetails = jsonDecode(user);
      print(userDetails.toString());
    }
    //final userName = NormalSignInResponse.fromJson(jsonDecode(user));
    //print(userName.userDetails?.name.toString());
    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff0893d1),
              ),
              child: Text('Drawer Header'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu,color: Color(0xff0893d1),),
          onPressed: () =>_key.currentState!.openDrawer(),
        ),
        backgroundColor: Colors.white,
        title: Image.asset("assets/images/wcart_logo.png",
        height: 90.00,
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
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,size: 25.00,),
                backgroundColor: Color(0xfff1f1f1),
                title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined,size: 25.00,),
                backgroundColor: Color(0xfff1f1f1),
                title: Text('Search')),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite,size: 25.00,),
              title: Text('WishList'),
              backgroundColor: Color(0xfff1f1f1),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active,size: 25.00,),
              title: Text('Notification'),
              backgroundColor: Color(0xfff1f1f1),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 25.00,),
              title: Text('Profile'),
              backgroundColor: Color(0xfff1f1f1),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xff0893d1),
          unselectedItemColor:Color(0xff717171) ,
          iconSize: 40,
          onTap: _onItemTapped,
        backgroundColor: Colors.white,
        selectedFontSize: 12,
        unselectedFontSize: 12,
          ),
    );
  }
}
