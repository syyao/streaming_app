import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final String cate;
  Option({@required this.cate});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'actio');
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        margin: EdgeInsets.only(right: 10, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          cate,
          style: TextStyle(
              color: Colors.red, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
