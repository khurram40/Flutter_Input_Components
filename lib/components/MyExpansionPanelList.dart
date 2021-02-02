import "package:flutter/material.dart";

class MyExpansionPanelList extends StatefulWidget {
  @override
  _MyExpansionPanelListState createState() => _MyExpansionPanelListState();
}
class MyItem {
  MyItem({this.isExpanded: false, this.header, this.body});

  bool isExpanded;
  final String header;
  final String body;
}
class _MyExpansionPanelListState extends State<MyExpansionPanelList> {
  List<MyItem> _items = <MyItem>[
    MyItem(header: "Header 1", body: "Body"),
  // MyItem(header: "Header 2", body: "Body 2"),
  // MyItem(header: "Header 3", body: "Body 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: <Widget>[
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _items[index].isExpanded = !_items[index].isExpanded;
            });
          },
          children: _items.map((MyItem item) {
            return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return Text(item.header);
                },
                isExpanded: item.isExpanded,
                body: Container (
                    child: Text(item.body)
                )
            );
          }).toList(),
        )
      ],
    );
  }
}
