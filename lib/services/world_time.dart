import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'dart:developer';

class WorldTime {

  String location; //Location name for the UI
  String ? time; // the time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint
  bool isDaytime = true; //true or false if daytime or not

  WorldTime({ required this.location, required this.flag, required this.url});

    Future<void> getTime() async {

      try {
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
        isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
        time = DateFormat.jm().format(now);
      }
      catch (e) {
        time = 'could not get time data';
      }
    }

}