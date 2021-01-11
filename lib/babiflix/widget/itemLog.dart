import 'package:flutter/material.dart';

class ItemLog extends StatelessWidget {
  final String image;
  final Color color;
  ItemLog(this.image, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 80,
      padding: EdgeInsets.only(top: 10, bottom: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Image(
        image: AssetImage(image),
      ),
    );
  }
}
