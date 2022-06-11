import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wcart/address-book/MyAddressBook.dart';
import 'package:wcart/edit-profile/EditProfile.dart';

class ProfileFragment extends StatefulWidget {
  @override
  _ProfileFragmentState createState() => _ProfileFragmentState();
  const ProfileFragment({Key? key}) : super(key: key);
}

class _ProfileFragmentState extends State<ProfileFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40.00),
          child: Column(
            children: [
              ClipOval(
                  child: Material(
                color: Colors.transparent,
                child: Ink.image(
                  image: AssetImage('assets/images/shoe.jpg'),
                  fit: BoxFit.cover,
                  width: 128,
                  height: 128,
                ),
              )),
             Container(
               width: double.infinity,
               height: 45.00,
               padding: EdgeInsets.all(5.00),
               decoration: BoxDecoration(
                 border: Border.all(color: Color(0xfff1f1f1)),
                 borderRadius: BorderRadius.circular(1.00)
               ),
               margin: EdgeInsets.only(top: 20.00,left: 30.00,right: 30.00),
              child: GestureDetector(
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context) => EditProfile()));
                 },
                 child: Row(
                   children: [
                     Container(
                       width: 30.00,
                       height: 30.00,
                       child: Icon(Icons.person,color: Color(0xff717171),),
                     ),
                     SizedBox(
                       width: 10.00,
                     ),
                     Expanded(child: Text('Edit Profile',)),
                     Container(width: 30.00,
                     height: 30.00,
                     child: Icon(Icons.chevron_right,color: Color(0xff717171),))
                   ],
                 ),
               ),
             ),
              Container(
                width: double.infinity,
                height: 45.00,
                padding: EdgeInsets.all(5.00),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xfff1f1f1)),
                    borderRadius: BorderRadius.circular(1.00)
                ),
                margin: EdgeInsets.only(top: 20.00,left: 30.00,right: 30.00),
                child: GestureDetector(
                  onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => MyAddressBook()));
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 30.00,
                        height: 30.00,
                        child: Icon(Icons.location_on,color: Color(0xff717171),),
                      ),
                      SizedBox(
                        width: 10.00,
                      ),
                      Expanded(child: Text('My Address Book')),
                      Container(width: 30.00,
                          height: 30.00,
                          child: Icon(Icons.chevron_right,color: Color(0xff717171),))
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 45.00,
                padding: EdgeInsets.all(5.00),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xfff1f1f1)),
                    borderRadius: BorderRadius.circular(1.00)
                ),
                margin: EdgeInsets.only(top: 20.00,left: 30.00,right: 30.00),
                child: GestureDetector(
                  onTap: (){

                  },
                  child: Row(
                    children: [
                      Container(
                        width: 30.00,
                        height: 30.00,
                        child: Icon(Icons.favorite,color: Color(0xff717171),),
                      ),
                      SizedBox(
                        width: 10.00,
                      ),
                      Expanded(child: Text('My WishList')),
                      Container(width: 30.00,
                          height: 30.00,
                          child: Icon(Icons.chevron_right,color: Color(0xff717171),))
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 45.00,
                padding: EdgeInsets.all(5.00),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xfff1f1f1)),
                    borderRadius: BorderRadius.circular(1.00)
                ),
                margin: EdgeInsets.only(top: 20.00,left: 30.00,right: 30.00),
                child: GestureDetector(
                  onTap: (){

                  },
                  child: Row(
                    children: [
                      Container(
                        width: 30.00,
                        height: 30.00,
                        child: Icon(Icons.badge,color: Color(0xff717171),),
                      ),
                      SizedBox(
                        width: 10.00,
                      ),
                      Expanded(child: Text('My Order')),
                      Container(width: 30.00,
                          height: 30.00,
                          child: Icon(Icons.chevron_right,color: Color(0xff717171),))
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 45.00,
                padding: EdgeInsets.all(5.00),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xfff1f1f1)),
                    borderRadius: BorderRadius.circular(1.00)
                ),
                margin: EdgeInsets.only(top: 20.00,left: 30.00,right: 30.00),
                child: GestureDetector(
                  onTap: (){

                  },
                  child: Row(
                    children: [
                      Container(
                        width: 30.00,
                        height: 30.00,
                        child: Icon(Icons.notifications_active,color: Color(0xff717171),),
                      ),
                      SizedBox(
                        width: 10.00,
                      ),
                      Expanded(child: Text('Notification')),
                      Container(width: 30.00,
                          height: 30.00,
                          child: Icon(Icons.chevron_right,color: Color(0xff717171),))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
