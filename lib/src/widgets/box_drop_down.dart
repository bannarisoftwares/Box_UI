import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';

class BoxFieldDropDownValues {
  final String key;
  final String value;

  BoxFieldDropDownValues(this.key, this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BoxFieldDropDownValues &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          value == other.value;

  @override
  int get hashCode => key.hashCode ^ value.hashCode;
}

class BoxFieldDropDown extends StatefulWidget {
  final double borderWidth;
  final double borderRadius;
  final String? hint;
  final List<BoxFieldDropDownValues> values;

  BoxFieldDropDown(
      {Key? key,
      this.borderWidth = 1,
      this.borderRadius = 10,
      required this.values,
      this.hint = "Select item"})
      : super(key: key);

  @override
  _BoxFieldDropDownState createState() {
    return _BoxFieldDropDownState(this.borderWidth, this.borderRadius);
  }
}

class _BoxFieldDropDownState extends State<BoxFieldDropDown> {
  String? _value;
  final double borderWidth;
  final double borderRadius;

  _BoxFieldDropDownState(this.borderWidth, this.borderRadius);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      items: widget.values.map<DropdownMenuItem<String>>((BoxFieldDropDownValues value) {
        return DropdownMenuItem<String>(
          value: value.value,
          child: Text(value.value),
        );
      }).toList(),

      onChanged: (String? value) {
        setState(() {
          _value = value;
        });
      },
      decoration: new InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: kcBorderColor, width: borderWidth),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kcBorderColor, width: borderWidth),
        ),
      ),

      hint: widget.hint!.length != 0 ? Text(widget.hint ?? "") : null,
      value: _value,
      // decoration: ,
    );
  }
}
