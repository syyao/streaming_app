import 'package:flutter/material.dart';

class Series extends StatelessWidget {
  final String imgseri;
  final String titleseri;
  Series({@required this.imgseri, @required this.titleseri});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'sinops');
      },
      child: Container(
        width: 150,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.transparent,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage(imgseri), fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Column(
                children: <Widget>[
                  Text(
                    titleseri,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
