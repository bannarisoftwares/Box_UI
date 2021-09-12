import 'package:flutter/cupertino.dart';

class Space extends StatelessWidget {
  final double height;
  final double width;

  const Space.vertical(this.height) : width = 0;

  const Space.horizontal(this.width) : height = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
