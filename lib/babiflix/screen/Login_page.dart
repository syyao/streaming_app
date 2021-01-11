import 'package:flutter/material.dart';
import 'package:streaming_app/babiflix/widget/FormSign.dart';
import 'package:streaming_app/babiflix/widget/authBtn.dart';
import 'package:streaming_app/babiflix/widget/itemLog.dart';

import '../widget/formLog.dart';
import '../widget/inputAuth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool toggle = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.textScaleFactorOf(context);

    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        height: deviceHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bcg.jpg'), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                tileMode: TileMode.clamp,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0.1),
                  Colors.black.withOpacity(0.8),
                  Colors.black,
                ]),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height / 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            setState(() {
                              toggle = true;
                            });
                          },
                          child: btn(
                            'Connexion',
                            toggle
                                ? Color.fromRGBO(230, 30, 36, 1)
                                : Colors.transparent,
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                toggle = false;
                              });
                            },
                            child: btn(
                              'Inscription',
                              toggle
                                  ? Colors.transparent
                                  : Color.fromRGBO(230, 30, 36, 1),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              toggle ? FormLog() : FormSign(),
              SizedBox(height: MediaQuery.of(context).size.height / 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 0.2,
                    width: deviceWidth / 1.5,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: deviceHeight / 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Ou avec',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      )),
                ],
              ),
              SizedBox(height: deviceHeight / 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ItemLog(
                    'images/pa.png',
                    Color.fromRGBO(59, 89, 152, 1),
                  ),
                  SizedBox(width: deviceWidth / 20),
                  ItemLog('images/gle.png', Colors.white)
                ],
              ),
              SizedBox(height: deviceHeight / 20),
            ],
          ),
        ),
      ),
    );
  }
}
