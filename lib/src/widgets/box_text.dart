import 'package:box_ui/src/shared/app_colors.dart';
import 'package:box_ui/src/shared/styles.dart';
import 'package:flutter/material.dart';

class BoxText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign alignment;
  final int width;
  final Color color;

  const BoxText.headingOne(this.text,
      {TextAlign align = TextAlign.start, this.color = kcPrimaryColor})
      : style = heading1Style,
        width = 10,
        alignment = align;

  const BoxText.headingTwo(this.text,
      {TextAlign align = TextAlign.start, this.color = kcPrimaryColor})
      : style = heading2Style,
        width = 10,
        alignment = align;

  const BoxText.headingThree(this.text,
      {TextAlign align = TextAlign.start, this.color = kcPrimaryColor})
      : style = heading3Style,
        width = 10,
        alignment = align;

  const BoxText.bodyOne(this.text,
      {TextAlign align = TextAlign.start, this.color = kcPrimaryColor})
      : style = body1Style,
        width = 10,
        alignment = align;

  const BoxText.bodyTwo(this.text,
      {TextAlign align = TextAlign.start, this.color = kcPrimaryColor})
      : style = body2Style,
        width = 10,
        alignment = align;

  const BoxText.bodyThree(this.text,
      {TextAlign align = TextAlign.start, this.color = kcPrimaryColor})
      : style = body3Style,
        width = 10,
        alignment = align;

  // const BoxText.headline(this.text, {TextAlign align = TextAlign.start, this.color = kcPrimaryColor})
  //     : style = headlineStyle,
  //       width = 10,
  //       alignment = align;
  //
  // const BoxText.subheading(this.text, {TextAlign align = TextAlign.start, this.color = kcPrimaryColor})
  //     : style = subheadingStyle,
  //       width = 10,
  //       alignment = align;
  //
  // const BoxText.caption(this.text, {TextAlign align = TextAlign.start, this.color = kcPrimaryColor})
  //     : style = captionStyle,
  //       width = 10,
  //       alignment = align;
  //
  // BoxText.body(this.text,
  //     {TextAlign align = TextAlign.start, this.color = kcPrimaryColor})
  //     : style = bodyStyle.copyWith(color: color),
  //       width = 10,
  //       alignment = align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: alignment,
    );
  }
}
