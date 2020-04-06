import 'package:flutter/material.dart';
import 'package:off_app/pages/flight.dart';
import 'package:off_app/T/hotel_checkout.dart';

class hotel extends StatefulWidget {
  @override
  _hotelState createState() => _hotelState();
}

class _hotelState extends State<hotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Text('My Hotel'),
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

      body: new hotel_checkout(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total: 530"),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
