import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // user defined function
    void _showDialog(String message) {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text(message),
            content: new Text("Alert Dialog body"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('First Flutter App'),
        backgroundColor: Colors.red[100],
      ),
      body: Row(
        children: <Widget>[
          Expanded(child: Image.asset('assets/img2.jpeg'),
          flex: 1),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Text('1'),
              color: Colors.cyan,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Text('2'),
              color: Colors.pinkAccent,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Text('3'),
              color: Colors.blue,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialog('Google.com');
        },
        child: Text('Google'),
      ),
    );

  }
}
