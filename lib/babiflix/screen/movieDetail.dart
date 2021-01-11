import 'package:flutter/material.dart';
import 'package:streaming_app/babiflix/widget/drawer.dart';
import 'package:streaming_app/babiflix/widget/star.dart';

class DetailMoviePage extends StatefulWidget {
  @override
  _DetailMoviePageState createState() => _DetailMoviePageState();
}

class _DetailMoviePageState extends State<DetailMoviePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      endDrawer: Drawers(),
      body: DetailMovie(),
    );
  }
}

class DetailMovie extends StatefulWidget {
  @override
  _DetailMovieState createState() => _DetailMovieState();
}

class _DetailMovieState extends State<DetailMovie> {
  Future _watchmovie(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible:
          false, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black.withOpacity(0.7),
          title: Text(
            "AVENGERS: ENDGAME",
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
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 1.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text("Fermer",
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
    return Scaffold(
      backgroundColor: Color(0xff191919),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height / 60),
                Container(
                    width: MediaQuery.of(context).size.width / 5,
                    child: Image(
                      image: AssetImage('images/bbf.png'),
                    )),
                SizedBox(height: MediaQuery.of(context).size.height / 30),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) {
                        return Container(
                          margin: EdgeInsets.only(right: 40),
                          alignment: Alignment.center,
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(3)),
                          child: Text('Action',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                        );
                      }),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Icon(Icons.arrow_back, color: Colors.black),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 12),
                    Text('AVENGERS: ENDGAME',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 40),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image: AssetImage('images/film3.jpg'),
                                  fit: BoxFit.cover),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white.withOpacity(0.3),
                                    blurRadius: 5),
                                BoxShadow(
                                    color: Colors.white.withOpacity(0.3),
                                    blurRadius: 5),
                              ]),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        height: 300,
                        width: 100,
                        padding: EdgeInsets.only(left: 10, right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.schedule),
                                SizedBox(width: 10),
                                Expanded(
                                    child: Container(
                                  child: Text(
                                    '2h45',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.video_library),
                                SizedBox(width: 10),
                                Expanded(
                                    child: Container(
                                  child: Text(
                                    'Action',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.star),
                                SizedBox(width: 10),
                                Expanded(
                                    child: Container(
                                  child: Text(
                                    '4,1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.collections_bookmark),
                                SizedBox(width: 10),
                                Expanded(
                                    child: Container(
                                  child: Text(
                                    'Ajouter aux favoris',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.event_note),
                                SizedBox(width: 10),
                                Expanded(
                                    child: Container(
                                  child: Text(
                                    '2019',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 40),
                Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        _watchmovie(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.red,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Regarder',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(Icons.play_circle_filled, color: Colors.white)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 11),
                    star(Colors.red),
                    star(Colors.red),
                    star(Colors.red),
                    star(Colors.red),
                    star(Colors.white),
                    SizedBox(width: 11),
                    Icon(
                      Icons.file_download,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 40),
                Text(
                  'Description',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 40),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Text(
                    "Le Titan Thanos ayant réussi à s'approprier les six Pierres d'Infinité et à les Le Titan Thanos ayant réussi à s'approprier les six Pierres d'Infinité et à lesLe Titan Thanos ayant réussi à s'approprier les six Pierres d'Infinité et à lesLe Titan Thanos ayant réussi à s'approprier les six Pierres d'Infinité et à les réunir sur le Gantelet doré, a pu réaliser son objectif de pulvériser la moitié de la population de l'Univers d'un claquement de doigts. Les quelques Avengers et Gardiens de la Galaxie ayant survécu, Steve Rogers, Thor, Natasha Romanoff, Tony Stark, Carol Danvers, Clint Barton, Bruce Banner, James Rhodes, Nébula et Rocket espèrent réparer le méfait de Thanos. Ils le retrouvent mais il s'avère que ce dernier a détruit les pierres et Thor le décapite.",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
          IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              }),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
