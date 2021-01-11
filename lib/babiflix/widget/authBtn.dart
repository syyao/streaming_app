import 'package:flutter/material.dart';

Widget btn(String title, Color color) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
    child: Text(
      title,
      style: TextStyle(fontSize: 18, color: Colors.white),
    ),
  );
}
