import 'package:flutter/material.dart';

class all_flight extends StatefulWidget {
  @override
  _all_flightState createState() => _all_flightState();
}

class _all_flightState extends State<all_flight> {
  var all_flight = [
    {
      "name": "New York",
      "picture": "assets/name/newyork.jpg",
      "price": "360",
      "date": "Aug 20"
    },
    {
      "name": "Tokyo",
      "picture": "assets/name/tokyo.jpg",
      "price": "330",
      "date": "Aug 23"
    },
    {
      "name": "Shanghai",
      "picture": "assets/name/shanghai.jpg",
      "price": "290",
      "date": "Sep 10"
    },
    {
      "name": "HongKong",
      "picture": "assets/name/hongkong.jpg",
      "price": "270",
      "date": "Sep 10"
    },
    {
      "name": "Milan",
      "picture": "assets/name/milan.jpg",
      "price": "340",
      "date": "Oct 10"
    },
    {
      "name": "Amsterdam",
      "picture": "assets/name/amsterdam.jpg",
      "price": "400",
      "date": "Nov 13"
    },
    {
      "name": "Beijing",
      "picture": "assets/name/beijing.jpg",
      "price": "300",
      "date": "Dec 10"
    },
    {
      "name": "Paris",
      "picture": "assets/name/paris.jpg",
      "price": "410",
      "date": "Dec 12"
    },
    {
      "name": "London",
      "picture": "assets/name/london.jpg",
      "price": "400",
      "date": "Aug 29"
    },
    {
      "name": "Toronto",
      "picture": "assets/name/toronto.jpg",
      "price": "350",
      "date": "Sep 30"
    },
    {
      "name": "Dubai",
      "picture": "assets/3.jpg",
      "price": "340",
      "date": "Oct 20 - Oct 21"
    },
    {
      "name": "Beijing",
      "picture": "assets/name/beijing.jpg",
      "price": "3240",
      "date": "Dec 25 - Dec 29"
    },
    {
      "name": "Vancouver",
      "picture": "assets/2.jpg",
      "price": "500",
      "date": "Dec 30 - Dec 31"
    },
    {
      "name": "Beijing",
      "picture": "assets/name/beijing.jpg",
      "price": "1000",
      "date": "Sep 10 - Sep 12"
    },
    {
      "name": "Tokyo",
      "picture": "assets/name/tokyo.jpg",
      "price": "5400",
      "date": "Nov 10 - Nov 14"
    },
    {
      "name": "London",
      "picture": "assets/name/london.jpg",
      "price": "4000",
      "date": "Oct 1 - Oct 9"
    },
    {
      "name": "Paris",
      "picture": "assets/name/paris.jpg",
      "price": "5400",
      "date": "Nov 20 - Nov 30"
    },
    {
      "name": "New Delhi",
      "picture": "assets/5.jpg",
      "price": "280",
      "date": "Nov 1 - Nov 2"
    },
    {
      "name": "Dubai",
      "picture": "assets/3.jpg",
      "price": "900",
      "date": "Aug 20 - Aug 22"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: all_flight.length,
        itemBuilder: (context, index) {
          return Single_flight_city(
            city_name: all_flight[index]["name"],
            city_price: all_flight[index]["price"],
            city_picture: all_flight[index]["picture"],
            city_date: all_flight[index]["date"],
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
        title: new Text(city_name, style: TextStyle(color: Colors.black)),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Container(
                  alignment: Alignment.topLeft,
                  child: new Text(
                    "\$${city_price}",
                    style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: new Text("Date:",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(city_date,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
