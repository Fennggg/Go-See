import 'package:flutter/material.dart';
import 'package:off_app/pages/city_detail.dart';

class city extends StatefulWidget {
  @override
  _cityState createState() => _cityState();
}

class _cityState extends State<city> {
  var city_list = [
    {"name": "Beijing", "picture": "assets/name/beijing.jpg", "price": "240"},
    {"name": "London", "picture": "assets/name/london.jpg", "price": "290"},
    {"name": "New York", "picture": "assets/name/newyork.jpg", "price": "320"},
    {"name": "Shanghai", "picture": "assets/name/shanghai.jpg", "price": "230"},
    {"name": "Hongkong", "picture": "assets/name/hongkong.jpg", "price": "200"},
    {"name": "Paris", "picture": "assets/name/paris.jpg", "price": "300"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: city_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_city(
            city_name: city_list[index]['name'],
            city_picture: city_list[index]['picture'],
            city_price: city_list[index]['price'],
          );
        });
  }
}

class Single_city extends StatelessWidget {
  final city_name;
  final city_picture;
  final city_price;

  Single_city({this.city_name, this.city_picture, this.city_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: city_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new CityDetail(
                      city_detail_name: city_name,
                      city_detail_picture: city_picture,
                      city_detail_price: city_price,
                    ))),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          city_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                        ),
                      ),
                      new Text(
                        "\$${city_price}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0),
                      )
                    ],
                  ),

                  //child: ListTile(
                  //  leading: Text(
                  //    city_name,
                  //    style: TextStyle(fontWeight: FontWeight.bold),
                  //  ),
                  //  title: Text(
                  //   "\$$city_price",
                  //    style: TextStyle(
                  //        color: Colors.red, fontWeight: FontWeight.w800),
                  //  ),
                  // ),
                ),
                child: Image.asset(
                  city_picture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
