import 'package:flutter/material.dart';

class TeveItem extends StatelessWidget {
  final String img;
  final String title;
  TeveItem({@required this.img, @required this.title});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '');
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              offset: Offset(8, 6),
              blurRadius: 8,
              color: Color(0xff191919).withOpacity(0.8),
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 140,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(img),
                  // fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(59, 59, 60, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
