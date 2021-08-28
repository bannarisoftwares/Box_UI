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
            border: Border.all(color: Colors.red, width: 2)),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search group",
            hintStyle: TextStyle(fontWeight: FontWeight.w600),
            border: InputBorder.none,
            icon: SvgPicture.asset(
              "lib/assets/icons/search.svg",
              package: "box_ui",
            ),
          ),
        ));
  }
}
