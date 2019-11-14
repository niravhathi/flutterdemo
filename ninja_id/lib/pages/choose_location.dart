import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
        title:Text('Choose Location'),
    backgroundColor: Colors.redAccent,
    ),
    body: Column(
        children: <Widget>[
          FlatButton.icon(onPressed: () {
              Navigator.pushNamed(context, '/loading');
          }, icon: Icon(Icons.navigate_next), label: Text('Loading Screen')),
    ],
    ),);
  }
}
