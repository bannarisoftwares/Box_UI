import 'package:box_ui/box_ui.dart';
import 'package:box_ui/src/shared/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxInput extends StatefulWidget {
  final String hintText;
  final String? initialText;
  final double verticalPadding;
  final double verticalMargin;
  final double horizontalPadding;
  final double horizontalMargin;
  final double borderWidth;
  final double borderRadius;
  final Function? onChanged;
  final String? errorText;

  const BoxInput(
      {Key? key,
      this.hintText = "Enter the name",
      this.verticalPadding = 5,
      this.horizontalPadding = 15,
      this.borderWidth = 1,
      this.horizontalMargin = 0,
      this.verticalMargin = 0,
      this.onChanged,
      this.initialText,
        this.errorText,
      this.borderRadius = 10})
      : super(key: key);

  @override
  _BoxInputState createState() => _BoxInputState();
}

class _BoxInputState extends State<BoxInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
            vertical: widget.verticalMargin,
            horizontal: widget.horizontalMargin),
        padding: EdgeInsets.symmetric(
            vertical: widget.verticalPadding,
            horizontal: widget.horizontalPadding),
        decoration: BoxDecoration(
            color: kcGreyColor,
            borderRadius: BorderRadius.circular(widget.borderRadius),
            border: Border.all(color: kcGreyColor, width: widget.borderWidth)),
        child: TextFormField(
          initialValue: widget.initialText,
          onChanged: (value) {
            widget.onChanged!(value);
          },
          decoration: InputDecoration(
            errorText: widget.errorText,
            hintText: widget.hintText,
            hintStyle: bodyStyle,
            border: InputBorder.none,
          ),
        ));
  }
}
