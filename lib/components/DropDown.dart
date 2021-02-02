import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownStr = 'Batman Begins';
  @override
  Widget build(BuildContext context) {
    return DropdownButton <String>(

        value: dropdownStr,
        onChanged: (String newValue) {
          setState(() {
            dropdownStr = newValue;
          });
        },
        items: <String> ['Batman Begins', 'The Dark Knight', 'The Dark Knight Rises']
            .map<DropdownMenuItem<String>> ((String value) {
          return DropdownMenuItem<String> (
              value: value,
              child: Text(value)
          );
        }).toList()
    );
  }
}
