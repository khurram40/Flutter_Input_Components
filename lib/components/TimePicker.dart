import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay _time = TimeOfDay.now();
  TimeOfDay picked;

  Future<Null> selectTime(BuildContext context) async {
    picked = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (picked != null && picked != _time) {
      setState(() {
        _time = picked;
        print(_time.toString());
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return  IconButton(
      icon: Icon(Icons.access_time),
      onPressed: () {
        selectTime(context);
      },
    );
  }
}
