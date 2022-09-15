import 'package:flutter/material.dart';
import 'dart:developer';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {

  //  Simulate a network request
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Yoshi';
    });
    //  Simulate a network request to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'Vegan, musician & chess master';
    });

    log('$username - $bio');

  }

  @override
  void initState() {
    super.initState();
    getData();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
