import 'package:flutter/material.dart';

class InputSign extends StatelessWidget {
  final String title;
  InputSign(this.title);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 1.2,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: title,
            contentPadding: EdgeInsets.only(left: 10),
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
