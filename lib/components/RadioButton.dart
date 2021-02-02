import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int group = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: 1,
          groupValue: group,
          onChanged: (T) {
            print(T);

            setState(() {
              group = T;
            });
          },
        ),
        Radio(
          value: 2,
          groupValue: group,
          onChanged: (T) {
            print(T);

            setState(() {
              group = T;
            });
          },
        ),
        Radio(
          value: 3,
          groupValue: group,
          onChanged: (T) {
            print(T);

            setState(() {
              group = T;
            });
          },
        )
      ],
    );
  }
}
