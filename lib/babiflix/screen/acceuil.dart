import 'package:flutter/material.dart';

class Acceuil extends StatefulWidget {
  @override
  _AcceuilState createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 800,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/accueil.jpeg"),
                    fit: BoxFit.cover),
              ),
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 300),
                    Text(
                      "BABIFLIX",
                      style: TextStyle(
                          color: Colors.red.withOpacity(0.8),
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    Column(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'inscrip');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Inscription",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'connex');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Connection",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
