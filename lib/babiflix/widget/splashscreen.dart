import 'package:flutter/material.dart';
import 'dart:async';

import 'package:shimmer/shimmer.dart';
import 'package:streaming_app/babiflix/screen/loginView.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToHome();
      } else {
        // _navigateToLogin();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => LoginView()));
  }

  // void _navigateToLogin(){
  //   Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(
  //           builder: (BuildContext context) => RootPage(auth:  Auth())
  //       )
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    // child: Container(
                    //   height: MediaQuery.of(context).size.height/3,

                    //   child: Image(image: AssetImage("images/dac.png",),)),
                  )),
              Shimmer.fromColors(
                period: Duration(milliseconds: 1500),
                baseColor: Colors.red,
                highlightColor: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      "B",
                      style: TextStyle(
                          fontSize: 200,
                          fontFamily: 'Pacifico',
                          shadows: <Shadow>[
                            Shadow(
                                blurRadius: 18.0,
                                color: Colors.black87,
                                offset: Offset.fromDirection(120, 12))
                          ]),
                    ),
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
