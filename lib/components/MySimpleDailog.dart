import 'package:flutter/material.dart';

class MySimpleDialog extends StatefulWidget {
  @override
  _MySimpleDialogState createState() => _MySimpleDialogState();
}

enum Movies { CaptainMarvel, Shazam }
class _MySimpleDialogState extends State<MySimpleDialog> {
  Future<void> OpenDialog() async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("Select A Movie"),
            children: <Widget>[
              SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, Movies.CaptainMarvel);
                  },
                  child: const Text("Captain Marvel")
              ),
              SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, Movies.Shazam);
                  },
                  child: const Text("Shazam")
              )
            ],
          );
        }
    )) {
      case Movies.CaptainMarvel:
        print("Captain Marvel Selected");
        break;

      case Movies.Shazam:
        print("Shazam Selected");
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.play_circle_filled),
      onPressed: () {
        OpenDialog();
      },
    );
  }
}
