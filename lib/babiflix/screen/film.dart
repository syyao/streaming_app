import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:streaming_app/babiflix/provider/data.dart';
import 'package:streaming_app/babiflix/widget/filmItem.dart';

class Film extends StatefulWidget {
  @override
  _FilmState createState() => _FilmState();
}

class _FilmState extends State<Film> {
  static const menuItems = <String>[
    'Saison 1',
    'Saison 2',
    'Saison 3',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map((String value) => DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(color: Colors.white),
            ),
          ))
      .toList();
  String _btnSelectedVAl = 'Saison 1';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            color: Color.fromRGBO(25, 25, 25, 1),
            child: Column(
              children: <Widget>[
                Row(
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
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 50,
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text(
                          'Vous regardez "',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          'Avengers',
                          style: TextStyle(color: Colors.red, fontSize: 18),
                        ),
                        Text(
                          '" En streaming',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: AssetImage("images/film3.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.red),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.play_arrow, color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Informations',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image: AssetImage('images/film4.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              "Harry Potter à l'école des sorciers ",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 20),
                      //   child: Row(
                      //     children: <Widget>[
                      //       Text(
                      //         "Durée : ",
                      //         style: TextStyle(
                      //             color: Colors.red,
                      //             fontWeight: FontWeight.bold),
                      //       ),
                      //       Expanded(
                      //         child: Text(
                      //           "152 minutes",
                      //           style: TextStyle(color: Colors.white),
                      //         ),
                      //       ),
                      //       Container(
                      //         height: 50,
                      //         width: 100,
                      //         alignment: Alignment.center,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(10),
                      //           color: Colors.red,
                      //           // border: Border.all(color: Colors.white),
                      //         ),
                      //         child: Text(
                      //           "Telecharger",
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //           ),
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          Text(
                            "Synopsis :",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        child: Text(
                          "Orphelin, le jeune Harry Potter peut enfin quitter ses tyranniques oncle et tante Dursley lorsqu'un curieux messager lui révèle qu'il est un sorcier. À 11 ans, Harry va enfin pouvoir intégrer la légendaire école de sorcellerie de Poudlard, y trouver une famille digne de ce nom et des amis, développer ses dons, et préparer son glorieux avenir...",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Realisateurs :",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Christother Colombus",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Text(
                            "Casting :",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Daniel Radcliffe, Rupert Grint, Emma Watson",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Text(
                            "Date de sortie :",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "2021",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Text(
                            "Genre :",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Action",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("VOUS POURRIEZ AIMEZ AUSSI",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 190,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: filmData.length,
                    itemBuilder: (context, i) {
                      return FimlItem(
                        img: filmData[i]["cover"],
                        title: filmData[i]["titre"],
                      );
                    },
                  ),
                ),
                SizedBox(height: 100),
                // Container(
                //   width: MediaQuery.of(context).size.width,

                //   // color: Color.fromRGBO(59, 59, 60, 1),
                //   padding: EdgeInsets.only(left: 30),
                //   child: Column(
                //     children: [
                //       Padding(
                //         padding: const EdgeInsets.symmetric(vertical: 10),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Text(
                //                     "Episodes :",
                //                     style: TextStyle(
                //                         color: Colors.white,
                //                         fontSize: 20,
                //                         fontWeight: FontWeight.bold),
                //                   ),
                //                   Text(
                //                     'Ici les épisodes de la saison 1',
                //                     style: TextStyle(
                //                       color: Colors.white,
                //                     ),
                //                   )
                //                 ]),
                //             DropdownButton(
                //                 items: this._dropDownMenuItems,
                //                 dropdownColor: Colors.black,
                //                 hint: Text(
                //                   _btnSelectedVAl,
                //                   style: TextStyle(color: Colors.white),
                //                 ),
                //                 onChanged: (String newValue) {
                //                   setState(() {
                //                     _btnSelectedVAl = newValue;
                //                   });
                //                 })
                //           ],
                //         ),
                //       ),
                //       SizedBox(height: 10),
                //       Container(
                //           height: 0.2,
                //           width: MediaQuery.of(context).size.width,
                //           color: Colors.white),
                //       SizedBox(height: 10),
                //       Container(
                //         height: 130,
                //         child: ListView.builder(
                //           scrollDirection: Axis.horizontal,
                //           itemCount: 3,
                //           itemBuilder: (context, i) {
                //             return Container(
                //               margin: EdgeInsets.only(right: 20),
                //               decoration: BoxDecoration(
                //                   color: Color.fromRGBO(59, 59, 60, 0.5),
                //                   borderRadius: BorderRadius.circular(10)),
                //               width: MediaQuery.of(context).size.width / 1.4,
                //               child: Container(
                //                 child: Row(
                //                   children: [
                //                     Container(
                //                       width: 120,
                //                       height: 100,
                //                       decoration: BoxDecoration(
                //                           image: DecorationImage(
                //                             image:
                //                                 AssetImage('images/film3.jpg'),
                //                             fit: BoxFit.cover,
                //                           ),
                //                           borderRadius:
                //                               BorderRadius.circular(5)),
                //                     ),
                //                     SizedBox(width: 10),
                //                     Column(
                //                       mainAxisAlignment:
                //                           MainAxisAlignment.center,
                //                       crossAxisAlignment:
                //                           CrossAxisAlignment.start,
                //                       children: [
                //                         Text(
                //                           '1 - The H worlda',
                //                           style: TextStyle(
                //                             color: Colors.white,
                //                           ),
                //                         ),
                //                         Text(
                //                           '51 min',
                //                           style: TextStyle(
                //                               color: Colors.grey, fontSize: 10),
                //                         ),
                //                       ],
                //                     ),
                //                     Spacer(),
                //                     IconButton(
                //                         icon: FaIcon(
                //                           FontAwesomeIcons.download,
                //                           color: Color.fromRGBO(230, 30, 36, 1),
                //                         ),
                //                         onPressed: () {})
                //                   ],
                //                 ),
                //               ),
                //             );
                //           },
                //         ),
                //       ),
                //       SizedBox(height: 50),
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
