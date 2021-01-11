import 'package:flutter/material.dart';

class Apropos extends StatefulWidget {
  @override
  _AproposState createState() => _AproposState();
}

class _AproposState extends State<Apropos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xff262626),
          width: MediaQuery.of(context).size.width,
          height: 850,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        " Babiflix",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
