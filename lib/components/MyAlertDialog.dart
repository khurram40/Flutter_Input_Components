import 'package:flutter/material.dart';

class MyAlertDialog extends StatefulWidget {
  @override
  _MyAlertDialogState createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  Future<void> OpenAlert() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Phone Alert"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("Your phone is too hot!!!"),
                  Text("Put it in Water :D")
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("I understand"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.add_alert),
      onPressed: () {
        OpenAlert();
      },
    );
  }
}
