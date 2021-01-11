import "package:flutter/material.dart";
import 'package:streaming_app/babiflix/provider/data.dart';
import 'package:streaming_app/babiflix/widget/teve.dart';

class Tele extends StatefulWidget {
  @override
  _TeleState createState() => _TeleState();
}

class _TeleState extends State<Tele> {
  bool search = false;
  void dynamicSearch() {
    setState(() {
      search = !search;
    });
  }

  Widget defaultAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: Container(
          width: MediaQuery.of(context).size.width / 5,
          child: Image(
            image: AssetImage('images/bbf.png'),
          )),
      //  Text(
      //   'BABIFLIX',
      //   style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      // ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () => dynamicSearch())
      ],
    );
  }

  Widget searchAppBar() {
    return AppBar(
      backgroundColor: Color(0xff191919),
      title: TextField(
        style: TextStyle(color: Colors.black),
        autofocus: true,
        decoration: InputDecoration(
            hintText: "Rechercher une chaine",
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey)),
      ),
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () => dynamicSearch()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: search ? searchAppBar() : defaultAppBar(),
      body: Container(
        color: Color(0xff262626),
        width: MediaQuery.of(context).size.width,
        height: 850,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  " Mes Télévisions",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 4 / 5,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, i) {
                    return Teve(
                      img: tvdata[i]["cover"],
                      title: tvdata[i]["titre"],
                    );
                  },
                  itemCount: serieData.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
