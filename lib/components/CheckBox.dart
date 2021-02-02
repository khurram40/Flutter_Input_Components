import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: checkBoxValue,
          onChanged: (bool value) {
            print(value);

            setState(() {
              checkBoxValue = value;
            });
          },
        ),
        Text("Notifications")
      ],
    );
  }
}
