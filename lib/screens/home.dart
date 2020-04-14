import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:off_app/structure/listview.dart';
import 'package:off_app/screens/about.dart';
import 'package:off_app/screens/city_detail.dart';
import 'package:off_app/structure/flight.dart';
import 'package:off_app/structure/hotel.dart';
import 'package:off_app/user/authentication.dart';
import 'package:provider/provider.dart';

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

    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: Text('Perfect Life Time️'),
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new hotel()));
              },
              child: ListTile(
                title: Text('Hotels'),
                leading: Icon(Icons.hotel, color: Colors.green),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new flight()));
              },
              child: ListTile(
                title: Text('Flights'),
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
            Divider(),
            InkWell(
              onTap: () async {
                authProvider.signOut();
              },
              child: ListTile(
                title: Text('SignOut'),
                leading: Icon(Icons.person, color: Colors.green),
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
