import 'package:http/http.dart';
import 'dart:convert';
import 'dart:developer';

class WorldTime {

  String location; //Location name for the UI
  String ? time; // the time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint

  WorldTime({ required this.location, required this.flag, required this.url});

    Future<void> getTime() async {
      // make the request
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].toString().substring(1,3);
      // log(datetime);
      // log(offset);

      //  Create a datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // Set the time property
      time = now.toString();
    }

}