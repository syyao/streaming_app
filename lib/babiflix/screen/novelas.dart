import 'package:flutter/material.dart';
import 'package:streaming_app/babiflix/provider/data.dart';
import 'package:streaming_app/babiflix/widget/novel.dart';

class Novelas extends StatefulWidget {
  @override
  _NovelasState createState() => _NovelasState();
}

class _NovelasState extends State<Novelas> {
  bool search = false;
  void dynamicSearch() {
    setState(() {
      search = !search;
    });
  }

  AppBar defaultAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text(
        'BABIFLIX',
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () => dynamicSearch()),
      ],
    );
  }

  AppBar searchAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: TextField(
        style: TextStyle(color: Colors.black),
        autofocus: true,
        decoration: InputDecoration(
          hintText: "Rechercher novelas",
        ),
      ),
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => dynamicSearch()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: search ? searchAppbar() : defaultAppBar(),
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
                  " Novelas",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3 / 4,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, i) {
                    return Novel(
                      img: novelData[i]["cover"],
                      title: novelData[i]["titre"],
                    );
                  },
                  itemCount: novelData.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
