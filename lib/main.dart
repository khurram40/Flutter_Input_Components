import 'package:flutter/material.dart';
import 'package:input_selection_components/components/DropDown.dart';
import 'package:input_selection_components/components/CheckBox.dart';
import 'package:input_selection_components/components/RadioButton.dart';
import 'package:input_selection_components/components/PopUpMenuButton.dart';
import 'package:input_selection_components/components/SwitchTile.dart';
import 'package:input_selection_components/components/SliderBar.dart';
import 'package:input_selection_components/components/DatePicker.dart';
import 'package:input_selection_components/components/TimePicker.dart';
import 'package:input_selection_components/components/MySimpleDailog.dart';
import 'package:input_selection_components/components/MyAlertDialog.dart';
import 'package:input_selection_components/components/MyBottomSheet.dart';
import 'package:input_selection_components/components/MyExpansionPanelList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool state = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text("My Components"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Column(

          children: [
           Row(children: [
             Text("Drop Down" ,style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(width: 20,),
             DropDown()
           ],
           ),
            Row(children: [
              Text("CheckBox" ,style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
              CheckBox(),
              ],
            ),
            Row(
              children: [
                Text("Radio Button" ,style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
                RadioButton(),
              ],
            ),
            Text("Switch Tile" ,style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
            SwitchTile(),
            Text("Slider" ,style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
            SliderBar(),
           Row(
             children: [
               Text("Clander" ,style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
               DatePicker(),
               Text("Time Picker" ,style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
               TimePicker(),
              ],
           ),
          Row(
            children: [
              Text("Simple Dialog" ,style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
              MySimpleDialog(),
              Text("ALert Dialog" ,style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
              MyAlertDialog(),
            ],
          ),
          Row(children: [
            Text("Bootom Sheet" ,style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
            MyBottomSheet(),
            Text("Popup Menu" ,style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
            PopUpMenuButton(),

          ],),
          Text("Expansion Panel" ,style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          MyExpansionPanelList()

          ],
        ),
      ),
    );
  }
}
