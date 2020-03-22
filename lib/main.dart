import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:off_app/T/horizontal_listview.dart';
import 'package:off_app/T/city.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

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
//      animationCurve: Curves.fastOutSlowIn,
        //    animationDuration: Duration(milliseconds: 1000),

        dotSize: 4.0,
        indicatorBgPadding: 2.0,
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
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Hello'),
              accountEmail: Text('Hello'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.purple,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourties'),
                leading: Icon(Icons.favorite),
              ),
            ),


            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),

      body:  new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(padding: const EdgeInsets.all(10.0),
            child: new Text('Recent travel'),),

          HorizontalList(),


          new Padding(padding: const EdgeInsets.all(10.0),
            child: new Text('City'),),

          Container(
            height: 320.0,
            child: city(),
          )
        ],
      ),
    );
  }
}
