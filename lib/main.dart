import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('you clicked me');
          },
          child: Text('click me'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
              padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: () {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

