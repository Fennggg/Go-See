import 'package:flutter/material.dart';

class all_hotel extends StatefulWidget {
  @override
  _all_hotelState createState() => _all_hotelState();
}

class _all_hotelState extends State<all_hotel> {
  var all_hotel = [
    {
      "name": "Dubai",
      "picture": "assets/3.jpg",
      "price": "140",
      "date": "Oct 20 - Oct 21"
    },
    {
      "name": "Beijing",
      "picture": "assets/name/beijing.jpg",
      "price": "1240",
      "date": "Dec 25 - Dec 29"
    },
    {
      "name": "Vancouver",
      "picture": "assets/2.jpg",
      "price": "190",
      "date": "Dec 30 - Dec 31"
    },
    {
      "name": "Beijing",
      "picture": "assets/name/beijing.jpg",
      "price": "240",
      "date": "Sep 10 - Sep 12"
    },
    {
      "name": "Tokyo",
      "picture": "assets/name/tokyo.jpg",
      "price": "800",
      "date": "Nov 10 - Nov 14"
    },
    {
      "name": "London",
      "picture": "assets/name/london.jpg",
      "price": "1000",
      "date": "Oct 1 - Oct 9"
    },
    {
      "name": "Paris",
      "picture": "assets/name/paris.jpg",
      "price": "1200",
      "date": "Nov 20 - Nov 30"
    },
    {
      "name": "New Delhi",
      "picture": "assets/5.jpg",
      "price": "90",
      "date": "Nov 1 - Nov 2"
    },
    {
      "name": "Dubai",
      "picture": "assets/3.jpg",
      "price": "100",
      "date": "Aug 20 - Aug 22"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: all_hotel.length,
        itemBuilder: (context, index) {
          return Single_flight_city(
            city_name: all_hotel[index]["name"],
            city_price: all_hotel[index]["price"],
            city_picture: all_hotel[index]["picture"],
            city_date: all_hotel[index]["date"],

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
                        color: Colors.black),
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
