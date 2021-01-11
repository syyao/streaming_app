// import "package:flutter/material.dart";

// Drawer menudrawer(BuildContext context) {
//   return  Drawer(
//     child: Container(
//       height: 100,
//       color: Color(0xff262626),
//       child: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Container(
//               height: 180,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 border: Border(),
//               ),
//               child: Row(
//                 children: <Widget>[
//                   SizedBox(width: 20),
//                   IconButton(
//                       icon: Icon(
//                         Icons.account_circle,
//                         color: Colors.red,
//                         size: 50,
//                       ),
//                       onPressed: () {
//                         Navigator.pushNamed(context, 'compt');
//                       }),
//                   SizedBox(width: 50),
//                   Text(
//                     "Babiflix",
//                     style: TextStyle(
//                         color: Colors.red,
//                         fontSize: 17,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//             // DrawItem(genr: drawerData[drawerData.length]["nom"]),
//             Column(
//               children: <Widget>[
//                 InkWell(
//                   onTap: () {
//                     Navigator.pushReplacementNamed(context, 'tv');
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Color(0xff262626),
//                       border: Border(
//                         bottom: BorderSide(color: Colors.white24),
//                       ),
//                     ),
//                     height: 50,
//                     child: Row(
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.only(left: 50),
//                           child: Text(
//                             "TV",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 17,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.pushReplacementNamed(context, 'film');
//                   },
//                   child: Container(
//                     alignment: Alignment.center,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       color: Color(0xff262626),
//                       border: Border(
//                         bottom: BorderSide(color: Colors.red),
//                       ),
//                     ),
//                     child: Text(
//                       "Films",
//                       style: TextStyle(
//                         color: Colors.red,
//                         fontSize: 17,
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.pushReplacementNamed(context, 'seri');
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Color(0xff262626),
//                       border: Border(
//                         bottom: BorderSide(color: Colors.white24),
//                       ),
//                     ),
//                     height: 50,
//                     child: Row(
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.only(left: 50),
//                           child: Text(
//                             "Series",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 17,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.pushReplacementNamed(context, 'ytb');
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Color(0xff262626),
//                       border: Border(
//                         bottom: BorderSide(color: Colors.white24),
//                       ),
//                     ),
//                     height: 50,
//                     child: Row(
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.only(left: 50),
//                           child: Text(
//                             "Youtube",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 17,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.pushReplacementNamed(context, 'radio');
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Color(0xff262626),
//                       border: Border(
//                         bottom: BorderSide(color: Colors.white24),
//                       ),
//                     ),
//                     height: 50,
//                     child: Row(
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.only(left: 50),
//                           child: Text(
//                             "Radio",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 17,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.pushReplacementNamed(context, 'afr');
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Color(0xff262626),
//                       border: Border(
//                         bottom: BorderSide(color: Colors.white24),
//                       ),
//                     ),
//                     height: 50,
//                     child: Row(
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.only(left: 50),
//                           child: Text(
//                             "Afrique",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 17,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.pushReplacementNamed(context, 'nov');
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Color(0xff262626),
//                       border: Border(
//                         bottom: BorderSide(color: Colors.white24),
//                       ),
//                     ),
//                     height: 50,
//                     child: Row(
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.only(left: 50),
//                           child: Text(
//                             "Novelas",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 17,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 70),
//                 Row(
//                   children: <Widget>[
//                     IconButton(
//                       icon: Icon(
//                         Icons.settings,
//                         color: Colors.red,
//                       ),
//                       onPressed: () {
//                         Navigator.pushReplacementNamed(context, 'par');
//                       },
//                     ),
//                     InkWell(
//                       onTap: () {
//                         Navigator.pushNamed(context, 'par');
//                       },
//                       child: Text(
//                         "Paramètres",
//                         style: TextStyle(
//                             color: Colors.white, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 30),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';

import 'drawer.dart';
import 'grid.dart';

class VoirPlus extends StatefulWidget {
  @override
  _VoirPlusState createState() => _VoirPlusState();
}

class _VoirPlusState extends State<VoirPlus>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      endDrawer: Drawers(),
      body: MainBody(),
    );
  }
}

class MainBody extends StatefulWidget {
  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff191919),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'BABIFLIX',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        child: Center(
                          child: Text(
                            "Films",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "Action",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Container(
                    child: Text(
                      "/",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Films",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("acceuillWid");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Retour",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GridFilM(),
            // Container(
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            //   child: Center(child: Expanded(child: GridFilM()))),
          ],
        ),
      )),
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
