import 'package:flutter/material.dart';

import 'inputAuth.dart';
import 'inputsign.dart';

class FormSign extends StatefulWidget {
  @override
  _FormSignState createState() => _FormSignState();
}

class _FormSignState extends State<FormSign> {
  bool _val = true;

  Future _inputDialog(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible:
          true, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black.withOpacity(0.7),
          title: Text(
            'Entrer votre code promo',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          content: Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width / 1.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('Accueil1');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text("Se connecter",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height / 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InputLogin('Nom ou pseudo'),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InputLogin('E-mail'),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 30),
        Container(
          width: MediaQuery.of(context).size.width / 1.2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InputSign('Mot de pass'),
              SizedBox(width: deviceWidth / 20),
              InputSign('Confirm pass'),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              child: Row(
                children: <Widget>[
                  Checkbox(
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                    autofocus: false,
                    onChanged: (bool value) {
                      setState(() {
                        this._val = value;
                      });
                    },
                    value: this._val,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      child: FittedBox(
                        child: Text(
                          "j'accepte les conditions d'utilisation de babiflix",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('Accueil1');
                // _inputDialog(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text("S'incrire",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
