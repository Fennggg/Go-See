import 'package:flutter/material.dart';
//import 'package:off_app/pages/city_detail.dart';
//import 'package:off_app/pages/flight.dart';

class flight_checkout extends StatefulWidget {
  @override
  _flight_checkoutState createState() => _flight_checkoutState();
}

class _flight_checkoutState extends State<flight_checkout> {
  var flight_check_out = [
    {
      "name": "Beijing",
      "picture": "assets/name/beijing.jpg",
      "price": "240",
      "date": "01/01"
    },
    {
      "name": "London",
      "picture": "assets/name/london.jpg",
      "price": "290",
      "date": "01/02"
    },
    //{"name": "New York", "picture": "assets/name/newyork.jpg", "price": "320"},
    //{"name": "Shanghai", "picture": "assets/name/shanghai.jpg", "price": "230"},
    //{"name": "Hongkong", "picture": "assets/name/hongkong.jpg", "price": "200"},
    //{"name": "Paris", "picture": "assets/name/paris.jpg", "price": "300"},
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: flight_check_out.length,
        itemBuilder: (context, index) {
          return Single_flight_city(
            city_name: flight_check_out[index]["name"],
            city_price: flight_check_out[index]["price"],
            city_picture: flight_check_out[index]["picture"],
            city_date: flight_check_out[index]["date"],

            //flight_check_out_name: flight_check_out[index]["name"],
          );
        });
  }
}

class Single_flight_city extends StatelessWidget {
  final city_name;
  final city_picture;
  final city_price;
  final city_date;

  Single_flight_city(
      {this.city_name, this.city_picture, this.city_price, this.city_date});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(city_picture),
        title: new Text(city_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Container(
                  alignment: Alignment.topLeft,
                  child: new Text(
                    "\$${city_price}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: new Text("Date:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      new Text(city_date, style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ],
        ),
        //trailing: new Column(
        //children: <Widget>[
        //new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
        //new Text("city_date"),
        //new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {}),
        //],
        //),
      ),
    );
  }
}
