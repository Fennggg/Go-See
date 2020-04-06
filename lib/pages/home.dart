import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:off_app/T/horizontal_listview.dart';
import 'package:off_app/T/city.dart';
import 'package:off_app/pages/about.dart';
import 'package:off_app/pages/flight.dart';
import 'package:off_app/pages/hotel.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/1.jpg'),
          AssetImage('assets/2.jpg'),
          AssetImage('assets/3.jpg'),
          AssetImage('assets/4.jpg'),
          AssetImage('assets/5.jpg'),
          AssetImage('assets/6.jpg'),
          AssetImage('assets/7.jpg'),
          AssetImage('assets/8.jpg'),
        ],
        autoplay: false,
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Text('Perfect places️'),
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
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.green),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new hotel()));
              },
              child: ListTile(
                title: Text('My Hotel'),
                leading: Icon(Icons.hotel, color: Colors.green),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new flight()));
              },
              child: ListTile(
               title: Text('My Flight'),
               leading: Icon(Icons.flight, color: Colors.green),
             ),
             ),
            Divider(),

            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new about()));
              },
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.green),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(
            padding: const EdgeInsets.all(5.0),
            child: new Text(
              'Popular Hotels',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
          ),
          HorizontalList(),
          new Padding(
            padding: const EdgeInsets.all(5.0),
            child: new Text('Top Destinations',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0)),
          ),
          Container(
            height: 500.0,
            child: city(),
          )
        ],
      ),
    );
  }
}
