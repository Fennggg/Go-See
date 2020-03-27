import 'package:flutter/material.dart';
import 'package:off_app/T/flight_checkout.dart';

class flight extends StatefulWidget {
  @override
  _flightState createState() => _flightState();
}

class _flightState extends State<flight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('Flight'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: new flight_checkout(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total:"),
                subtitle: new Text("\$300"),
              ),
            ),
            Expanded(
                child: new MaterialButton(
              onPressed: () {},
              child: new Text(
                "Check out",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            )),
          ],
        ),
      ),
    );
  }
}
