import 'package:flutter/material.dart';

class Mdpass extends StatefulWidget {
  @override
  _MdpassState createState() => _MdpassState();
}

class _MdpassState extends State<Mdpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 850,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/accueil.jpeg"), fit: BoxFit.cover),
          ),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(height: 150),
                Text(
                  "",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50),
                Column(
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Entrez votre adresse Email",
                            hintStyle: TextStyle(color: Colors.black26),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'inscrip');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Envoyer",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
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
