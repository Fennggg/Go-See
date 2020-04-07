import 'package:flutter/material.dart';
import 'package:off_app/T/flight_checkout.dart';
import 'package:off_app/pages/hotel.dart';

class flight extends StatefulWidget {
  @override
  _flightState createState() => _flightState();
}


class _flightState extends State<flight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Text('My Flight'),
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
      body: new flight_checkout(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total: 1240"),
              ),
            ),
            // Expanded(
            //     child: new MaterialButton(
            //      onPressed: () {},
            //       child: new Text(
            //        "Check out",
            //        style: TextStyle(color: Colors.white),
            //      ),
            //      color: Colors.blue,
            //    )),
          ],
        ),
      ),


    );
  }
}
