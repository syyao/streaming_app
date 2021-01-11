import 'package:flutter/material.dart';


class MoadifModepass extends StatefulWidget {
  @override
  _MoadifModepassState createState() => _MoadifModepassState();
}

class _MoadifModepassState extends State<MoadifModepass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191919),
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
            'Modifier Mot de pass',
            style: TextStyle(color: Colors.red),
          ),
          elevation: 0,
     
        ),
         body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Color(0xff191919),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                        'Modifier mot de passe',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Ancien mot de passe",
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
                            hintText: 'Ancien mot de passe',
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            hintStyle:
                                TextStyle(color: Colors.grey.withOpacity(0.7)),
                          ),
                        ),
                      ),
                        Text(
                        "Nouveau mot de passe",
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
                            hintText: 'Nouveau mot de passe',
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
                        "Confirmation du mot de passe",
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
                            hintText: 'Confirmation du mot de passe',
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
        )
      
    );
  }
}