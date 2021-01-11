import 'package:flutter/material.dart';
import 'package:streaming_app/babiflix/provider/data.dart';
import 'package:streaming_app/babiflix/widget/series.dart';

class SerieCate extends StatefulWidget {
  @override
  _SerieCateState createState() => _SerieCateState();
}

class _SerieCateState extends State<SerieCate> {
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
            onPressed: () {
              setState(() {
                search = !search;
              });
            }),
      ],
    );
  }

  AppBar searchAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: TextField(
        style: TextStyle(color: Colors.black),
        autofocus: true,
        decoration: InputDecoration(
          hintText: "Rechercher une series",
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
      appBar: search ? searchAppBar() : defaultAppBar(),
      body: Container(
        color: Color(0xff262626),
        width: MediaQuery.of(context).size.width,
        height: 850,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    " Series",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3 / 4,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, i) {
                    return Series(
                      imgseri: serieData[i]["cover"],
                      titleseri: serieData[i]["titre"],
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
