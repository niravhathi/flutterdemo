import 'package:flutter/material.dart';
import 'package:ninja_id/pages/choose_location.dart';
import 'package:ninja_id/pages/loading.dart';
import 'quote.dart';
import 'quoteCard.dart';
import 'main2.dart';
void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context) => QuoteList(),
    '/main2': (context) => NinjaCard(),
    '/choose_location' : (context) => ChooseLocation(),
    '/loading' : (context) => Loading()

  }
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  @override
  List<Quote> quotes = [
    Quote(text: 'Good, better, best. Never let it rest. Til your good is better and your better is best.', author: 'St. Jerome'),
    Quote(text: 'Only I can change my life. No one can do it for me.', author: 'Carol Burnett'),
    Quote(text: 'It does not matter how slowly you go as long as you do not stop.', author: 'Confucius'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title:Text('Quotes'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: <Widget>[
          Column(
            children:
                quotes.map((quote) => QuoteCard(
                  quote : quote,
                  delete : () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }
                )).toList(),
          ),
          FlatButton.icon(onPressed: () {
            Navigator.pushNamed(context, '/choose_location');
          }, icon: Icon(Icons.navigate_next), label: Text('Choose Location')),
          FlatButton.icon(onPressed: () {
            Navigator.pushNamed(context, '/main2');
          }, icon: Icon(Icons.navigate_next), label: Text('Ninja ID'))
        ],
      ),
    );
  }
}


