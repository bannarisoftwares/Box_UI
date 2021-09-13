import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';

class BoxFieldDropDown extends StatefulWidget {
  final double borderWidth;
  final double borderRadius;

  BoxFieldDropDown({Key? key, this.borderWidth = 1, this.borderRadius = 10})
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
      items: [
        DropdownMenuItem<String>(
          child: Text('Item 1'),
          value: 'one',
        ),
        DropdownMenuItem<String>(
          child: Text('Item 2'),
          value: 'two',
        ),
        DropdownMenuItem<String>(
          child: Text('Item 3'),
          value: 'three',
        ),
      ],
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

      hint: Text('Select Item'),
      value: _value,
      // decoration: ,
    );
  }
}
