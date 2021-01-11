import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String label;
  // final Color color;
  // final double width;
  // final double height;
  // final EdgeInsetsGeometry margin;
  final bool selected;
  final Function(bool selected) onSelect;

  CustomChip({
    Key key,
    this.label,
    //   this.color,
    //   this.width,
    //   this.height,
    //   this.margin,
    this.selected,
    this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(
          color: selected ? Colors.red : Colors.transparent,
          width: 1,
        ),
      ),
      child: Stack(
        children: [
          InkWell(
            onTap: () => onSelect(!selected),
            child: Container(
              width: 100,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 5),
              alignment: Alignment.center,
              child: FittedBox(
                child: Text(
                  label,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
              right: 0,
              child: Icon(
                Icons.check,
                color: selected ? Colors.red : Colors.transparent,
                size: 18,
              )),
        ],
      ),
    );
  }
}
