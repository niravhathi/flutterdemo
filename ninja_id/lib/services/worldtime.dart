import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String flag;
  String url;
  String time;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getData() async {

//    Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
//    print(response.body);
//    Map mapData = jsonDecode(response.body);
//    print(mapData['title']);
    try {

      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map mapData = jsonDecode(response.body);

      //Decoded data
      String dateTime = mapData['datetime'];
      String offset = mapData['utc_offset'].toString().substring(1,3);
      String mins =   mapData['utc_offset'].toString().substring(4,6);
      print('$dateTime in string');
      DateTime now = DateTime.parse(dateTime);
      print(offset);
      print(mins);
      now = now.add(Duration(hours:int.parse(offset), minutes: int.parse(mins)));
      time = now.toString();
    }
    catch (e) {
      print(e);
      time = 'get error $e';
    }


  }

}