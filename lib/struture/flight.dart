import 'package:flutter/material.dart';
import 'package:off_app/struture/all_flight.dart';
import 'package:off_app/struture/hotel.dart';

class flight extends StatefulWidget {
  @override
  _flightState createState() => _flightState();
}

class _flightState extends State<flight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Flights'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.hotel,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new hotel()));
              }),
        ],
      ),
      body: new all_flight(),
    );
  }
}
