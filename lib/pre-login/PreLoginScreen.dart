import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wcart/sign-in/SignInWithEmailScreen.dart';
import 'package:wcart/sign-up/SignUpScreen.dart';

class PreLoginScreen extends StatefulWidget {
  @override
  _PreLoginState createState() => _PreLoginState();
}

class _PreLoginState extends State<PreLoginScreen> {
  late Permission permission;
  PermissionStatus permissionStatus = PermissionStatus.denied;

  void _listenPermission() async {
    final status = await Permission.camera.status;

    setState(() {
      permissionStatus= status;
    });

    switch (status) {
      case PermissionStatus.denied:
        requestForPermission();

        break;
      case PermissionStatus.granted:

        break;
      case PermissionStatus.limited:
        Navigator.pop(context);
        break;
      case PermissionStatus.restricted:
        Navigator.pop(context);
        break;
      case PermissionStatus.permanentlyDenied:
        Navigator.pop(context);
        break;
    }
  }

  Future<void> requestForPermission()async{
    final status = await Permission.camera.request();
  }

  @override
  void initState() {
    _listenPermission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50.00, right: 30.00, left: 30.00),
            width: double.infinity,
            height: 250.00,
            color: Colors.white,
            child: new Image.asset(
              'assets/images/wcart_logo.png',
              height: 250.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: 50.00,
            margin: EdgeInsets.only(top: 20.00, right: 30.00, left: 30.00),
            decoration: BoxDecoration(
                color: Color(0xff0893d1),
                borderRadius: BorderRadius.circular(2.0)),
            child: MaterialButton(
              height: 50.00,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignInWithEmailScreen()));
              },
              child: Text("Sign In"),
              textColor: Colors.white,
            ),
          ),
          Container(
            width: double.infinity,
            height: 50.00,
            margin: EdgeInsets.only(top: 20.00, right: 30.00, left: 30.00),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffe9e9e9),
              ),
              borderRadius: BorderRadius.circular(2.0),
            ),
            child: MaterialButton(
              height: 50.00,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              child: Text("Register"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60.00, right: 30.00, left: 30.00),
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    child: Container(
                  height: 1.00,
                  color: Color(0xfff1f1f1),
                )),
                Container(
                  margin: EdgeInsets.only(right: 10.00, left: 10.00),
                  child: Text(
                    "or",
                    style: TextStyle(
                        fontSize: 12.00,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                ),
                Expanded(
                    child: Container(
                  height: 1.00,
                  color: Color(0xfff1f1f1),
                ))
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50.00,
            margin: EdgeInsets.only(top: 60.00, right: 30.00, left: 30.00),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffe9e9e9),
              ),
              borderRadius: BorderRadius.circular(2.0),
            ),
            child: MaterialButton(
              onPressed: () {
                googleSignIn(context);
              },
              elevation: 10,
              child: Row(
                children: [
                  Container(
                    height: 30.00,
                    width: 30.00,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/googleimage.png'),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle),
                  ),
                  Expanded(
                      child: Text("Continue with Google",
                          textAlign: TextAlign.center))
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50.00,
            margin: EdgeInsets.only(top: 20.00, right: 30.00, left: 30.00),
            decoration: BoxDecoration(
              color: Color(0xff1877f2),
              borderRadius: BorderRadius.circular(2.0),
            ),
            child: MaterialButton(
              onPressed: () {
                googleSignIn(context);
              },
              elevation: 10,
              child: Row(
                children: [
                  Container(
                    height: 30.00,
                    width: 30.00,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/facebook.png'),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle),
                  ),
                  Expanded(
                      child: Text(
                    "Continue with Facebook",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ))
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  void signIn() {}

  void signUp() {}

  Future<void> googleSignIn(BuildContext context) async {}
}
