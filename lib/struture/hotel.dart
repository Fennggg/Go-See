import 'package:flutter/material.dart';
import 'package:off_app/struture/all_hotel.dart';
import 'package:off_app/struture/flight.dart';

class hotel extends StatefulWidget {
  @override
  _hotelState createState() => _hotelState();
}

class _hotelState extends State<hotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Hotels'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.flight,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new flight()));
              }),
        ],
      ),
      body: new all_hotel(),
    );
  }
}
