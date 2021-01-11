import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ModiProfile extends StatefulWidget {
  @override
  _ModiProfileState createState() => _ModiProfileState();
}

class _ModiProfileState extends State<ModiProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.red,
              onPressed: () {
                Navigator.of(context).pop();
              }),
          backgroundColor: Color(0xff191919),
          centerTitle: true,
          title: Text(
            'Modifier Profil',
            style: TextStyle(color: Colors.red),
          ),
          elevation: 0,
          actions: [
            // IconButton(
            //   icon: Icon(Icons.check, color: Colors.red),
            //   onPressed: () {},
            // )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Color(0xff191919),
            child: Column(
              children: [
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Information générale',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Nom & Prénom',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            suffixIcon:
                                Icon(Icons.edit, color: Colors.grey, size: 15),
                            hintText: 'Nom & prénoms',
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            hintStyle:
                                TextStyle(color: Colors.grey.withOpacity(0.7)),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Date de Naissance',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            suffixIcon:
                                Icon(Icons.edit, color: Colors.grey, size: 15),
                            hintText: 'Date de Naissance',
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            hintStyle:
                                TextStyle(color: Colors.grey.withOpacity(0.7)),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            suffixIcon:
                                Icon(Icons.edit, color: Colors.grey, size: 15),
                            hintText: 'Email',
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            hintStyle:
                                TextStyle(color: Colors.grey.withOpacity(0.7)),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Changer de mot de passe',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            suffixIcon:
                                Icon(Icons.edit, color: Colors.grey, size: 15),
                            hintText: '*********',
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            hintStyle:
                                TextStyle(color: Colors.grey.withOpacity(0.7)),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Enregistrer',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
