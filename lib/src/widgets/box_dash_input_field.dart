import 'package:box_ui/src/shared/styles.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxDashInputController {
  late void Function() setHintIcon;
}

class BoxDashInput extends StatefulWidget {
  final String hintText;
  final double verticalPadding;
  final double horizontalPadding;
  final double borderWidth;
  final double borderRadius;
  final int minLine;
  final int maxLine;
  final BoxDashInputController controller;

  // const BoxInput({Key? key, this.hintText = "Search"}) : super(key: key);
  const BoxDashInput(
      {Key? key,
      this.hintText = "This is dashed input",
      this.verticalPadding = 5,
      this.horizontalPadding = 15,
      this.borderWidth = 1,
      this.borderRadius = 10,
      this.minLine = 1,
      this.maxLine = 5,
      required this.controller})
      : super(key: key);

  @override
  _BoxDashInputState createState() => _BoxDashInputState(controller);
}

class _BoxDashInputState extends State<BoxDashInput> {
  Icon hintPreFixIcon = Icon(Icons.edit);

  _BoxDashInputState(BoxDashInputController controller) {
    controller.setHintIcon = setHintIcon;
  }

  void setHintIcon() {
    setState(() {
      hintPreFixIcon = Icon(Icons.done);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DottedBorder(
      padding: EdgeInsets.symmetric(
          vertical: widget.verticalPadding,
          horizontal: widget.horizontalPadding),
      color: Colors.black,
      borderType: BorderType.RRect,
      radius: Radius.circular(widget.borderRadius),
      strokeWidth: 1,
      child: TextField(
        keyboardType: TextInputType.multiline,
        minLines: widget.minLine,
        maxLines: widget.maxLine,
        decoration: InputDecoration(
          suffixIcon: hintPreFixIcon,
          hintText: widget.hintText,
          hintStyle: bodyStyle,
          border: InputBorder.none,
        ),
      ),
    ));
  }
}
