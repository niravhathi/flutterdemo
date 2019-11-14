import 'package:flutter/material.dart';

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int age = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avtar.jpeg'),
                radius: 50.0,
              ),
            ),
            Text(
              'First Name',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Nirav',
              style: TextStyle(
                  color: Colors.amberAccent[100],
                  fontSize: 28.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Last Name',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Hathi',
              style: TextStyle(
                  color: Colors.amberAccent[100],
                  fontSize: 28.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'nirav.hathi@volansys.com',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Weight',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '$age kg',
              style: TextStyle(
                  color: Colors.amberAccent[100],
                  fontSize: 28.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    setState(() {
                      age = age + 1;
                      print(age);
                    });
                  },
                  child: Text('+',
                      style:TextStyle(
                          color: Colors.white,
                          fontSize: 28.0
                      ),
                      textAlign: TextAlign.left
                  ),
                  color: Colors.amberAccent[100],
                ),
                SizedBox(width: 10),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      age = age - 1;
                      print(age);
                    });

                  },
                  child: Text('-',
                    style:TextStyle(
                        color: Colors.white,
                        fontSize: 28.0

                    ),
                    textAlign: TextAlign.left,
                  ),
                  color: Colors.amberAccent[100],
                )
              ],
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () {
                  Navigator.pushNamed(context, '/');

              },
              child: Text('Quotes',
                style:TextStyle(
                    color: Colors.white,
                    fontSize: 28.0

                ),
                textAlign: TextAlign.left,
              ),
              color: Colors.green[600],
            )
          ],
        ),
      ),
    );
  }
}