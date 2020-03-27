import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:off_app/pages/home.dart';

class CityDetail extends StatefulWidget {
  final city_detail_name;
  final city_detail_price;
  final city_detail_picture;

  CityDetail({
    this.city_detail_name,
    this.city_detail_price,
    this.city_detail_picture,
  });

  @override
  _CityDetailState createState() => _CityDetailState();
}

class _CityDetailState extends State<CityDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: Text('Travel'),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.city_detail_picture),
              ),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(
                    widget.city_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "\$${widget.city_detail_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Date"),
                            content: new Text("Choose the date"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("DATE")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Date"),
                            content: new Text("Choose the date"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("DATE")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Book"),
                ),
              ),

              //new IconButton(icon: Icons(Icons.add_shopping_cart), onPressed: (){})
              //new IconButton(icon: Icons(Icons.add_shopping_cart), onPressed: (){})
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text(
              "Description",
              style: TextStyle(color: Colors.black87),
            ),
            subtitle: new Text(
                "Being capital of the People's Republic of China, Beijing is the nation's political, economic, and cultural center. "
                "Located in north China, close to the port city of Tianjin and partially surrounded by Hebei Province, it also serves as the most "
                "important transportation hub and port of entry.As one of the six ancient cities in China, Beijing has been the heart and soul of "
                "politics throughout its long history and consequently there is an unparalleled wealth of discovery to delight and intrigue travelers"
                " as they explore the city's ancient past and exciting modern development. Now it has become one of the most popular travel destinations"
                " in the world, with about 140 million Chinese tourists and 4.4 million international visitors in a year."),
          ),
          Divider(),
          new ListTile(
            title: new Text(
              "Things to do in Beijing",
              style: TextStyle(color: Colors.black87),
            ),
            subtitle: new Text(
                "Great Wall  Fordden City  Tiananmen Square  Summer Palace  National Stadium  Temple of Heaven"),
          ),
          Divider(),
          new ListTile(
            title: new Text(
              "Dining",
              style: TextStyle(color: Colors.black87),
            ),
            subtitle: new Text(
                "The Roast Duck and the Imperial Court Food are highly recommended. Nowhere else on earth will you find such a variety of gourmet restaurants offering the very best of Chinese and western dishes."),
          ),
          Divider(),
          new ListTile(
            title: new Text(
              "Shopping",
              style: TextStyle(color: Colors.black87),
            ),
            subtitle: new Text(
                "The most famous and popular shopping destinations are the Yansha and Guomao Shopping Malls, Xidan Street and streets near Tiananmen Square such as  the Wangfujing and Qianmen Streets."),
          ),
          Divider(),
          new ListTile(
            title: new Text(
              "Other Cities",
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Container(
            height: 360.0,
            child: city(),
          )
        ],
      ),
    );
  }
}

//replace

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
