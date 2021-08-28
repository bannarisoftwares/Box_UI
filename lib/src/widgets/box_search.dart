import 'package:box_ui/box_ui.dart';
import 'package:box_ui/src/shared/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoxSearch extends StatelessWidget {
  const BoxSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.symmetric(vertical: 30),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: kcBorderColor, width: 1)),
        child: TextField(
          // style: TextStyle(fontFamily: FontStyle.),
          decoration: InputDecoration(
            hintText: "Search Groups",
            hintStyle: heading2Style,
            border: InputBorder.none,
            icon: SvgPicture.asset(
              "lib/assets/icons/search.svg",
              package: "box_ui",
            ),
          ),
        ));
  }
}
