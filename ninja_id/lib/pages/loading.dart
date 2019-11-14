import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:ninja_id/services/worldtime.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

      String time = 'Loading Time';

    void setupWorldTime () async {
      WorldTime worldTime = WorldTime(location: 'Kolkata', flag: '', url: 'Asia/Kolkata');
      await worldTime.getData();
      //print(worldTime.time);
      setState(() {
        time = worldTime.time;
      });

    }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
    //getData();
    //print('hey there!');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title:Text('Loading Screen'),
        backgroundColor: Colors.redAccent,
      ),
      body:
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FlatButton.icon(onPressed: () {
              //Navigator.pushNamed(context, '/loading');
            }, icon: Icon(Icons.navigate_next), label: Text('Loading Screen'), color: Colors.amber[500]),
            Text('$time')
          ],
        ),
      ),);
  }
}
