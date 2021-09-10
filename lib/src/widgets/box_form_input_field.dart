import 'package:box_ui/box_ui.dart';
import 'package:box_ui/src/shared/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoxInput extends StatelessWidget {
  final String hintText;
  final double verticalPadding;
  final double horizontalPadding;
  final double borderWidth;
  final double borderRadius;

  // const BoxInput({Key? key, this.hintText = "Search"}) : super(key: key);
  const BoxInput(
      {Key? key,
      this.hintText = "Enter the name",
      this.verticalPadding = 5,
      this.horizontalPadding = 15,
      this.borderWidth = 1,
      this.borderRadius = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.symmetric(vertical: 30),
        padding: EdgeInsets.symmetric(
            vertical: verticalPadding, horizontal: horizontalPadding),
        decoration: BoxDecoration(
            color: kcGreyColor,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: kcGreyColor, width: borderWidth)),
        child: TextField(
          // style: TextStyle(fontFamily: FontStyle.),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: bodyStyle,
            border: InputBorder.none,
          ),
        ));
  }
}
