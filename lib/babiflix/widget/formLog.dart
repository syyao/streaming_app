import 'package:flutter/material.dart';

import 'inputAuth.dart';

class FormLog extends StatefulWidget {
  @override
  _FormLogState createState() => _FormLogState();
}

class _FormLogState extends State<FormLog> {
  bool _val = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height / 9),
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
            InputLogin('Mot de passe'),
          ],
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
                          "Rester connecté",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 50,
                      child: FittedBox(
                        child: Text(
                          "Mot de passe oublié",
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
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                decoration: BoxDecoration(
                  color: Color(0xffe61e24),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text('Se connecter',
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
