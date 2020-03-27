import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:off_app/T/horizontal_listview.dart';
import 'package:off_app/T/city.dart';
import 'package:off_app/pages/flight.dart';

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
          AssetImage('assets/2.jpeg'),
          AssetImage('assets/3.jpg'),
          AssetImage('assets/4.jpg'),
          AssetImage('assets/5.jpg'),
          AssetImage('assets/6.jpg'),
        ],
        autoplay: false,
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('Travel'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
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
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Welcome',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0)),
              //accountEmail: Text('Hello'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,

                  //child: Icon(
                  // Icons.person,
                  // color: Colors.white,
                  // ),
                ),
              ),

              //decoration: new BoxDecoration(
              // color: Colors.blue,
              // borderRadius: BorderRadius.circular(12),
              // ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.green),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.green),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new flight()));
              },
              child: ListTile(
                title: Text('Flight'),
                leading: Icon(Icons.flight, color: Colors.green),
              ),
            ),

            // InkWell(
            //  onTap: () {},
            //  child: ListTile(
            //    title: Text('Categories'),
            //    leading: Icon(Icons.dashboard),
            //  ),
            // ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourties'),
                leading: Icon(Icons.favorite, color: Colors.green),
              ),
            ),

            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blue),
              ),
            ),
            InkWell(
              onTap: () {},
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

      //  bottomNavigationBar: BottomNavigationBar(
      // currentIndex: 0, // this will be set when a new tab is tapped
      // items: [
      //  BottomNavigationBarItem(
      //   icon: new Icon(Icons.home),
      //   title: new Text(''),
      // ),
      // BottomNavigationBarItem(
      //   icon: new Icon(Icons.image),
      //    title: new Text(''),
      // ),
      // BottomNavigationBarItem(
      //      icon: Icon(Icons.person),
      //      title: Text('')
      //   )
      //  ],
      // ),
    );
  }
}
