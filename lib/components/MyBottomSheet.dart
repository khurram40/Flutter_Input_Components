import 'package:flutter/material.dart';

class MyBottomSheet extends StatefulWidget {
  @override
  _MyBottomSheetState createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  void OpenBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
              child: Wrap(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.alarm),
                    title: Text("Alarm"),
                    onTap: () {
                      print("Open Alarm");
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text("Map"),
                    onTap: () {
                      print("Open Map");
                      Navigator.of(context).pop();
                    },
                  )
                ],
              )
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      icon: Icon(Icons.open_in_new),
      onPressed: () {
        OpenBottomSheet(context);
      },
    );
  }
}
