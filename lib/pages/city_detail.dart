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
            ],
          ),

          Divider(),
          new ListTile(
            title: new Text(
              "Description",
              style: TextStyle(color: Colors.black87),
            ),
            subtitle: new Text(
                "Beijing, China’s sprawling capital, has history stretching back 3 millennia. "
                    "Yet it’s known as much for modern architecture as its ancient sites such as the grand Forbidden City complex,"
                    " the imperial palace during the Ming and Qing dynasties. "
                    "Nearby, the massive Tiananmen Square pedestrian plaza is the site of Mao Zedong’s "
                    "mausoleum and the National Museum of China, displaying a vast collection of cultural relics."),
          ),

          Divider(),
          new ListTile(
            subtitle: new Text(
                "Tokyo, Japan’s busy capital, mixes the ultramodern and the traditional, "
                    "from neon-lit skyscrapers to historic temples."
                    " The opulent Meiji Shinto Shrine is known for its towering gate and surrounding woods."
                    " The Imperial Palace sits amid large public gardens. "
                    "The city's many museums offer exhibits ranging from classical art "
                    "(in the Tokyo National Museum) to a reconstructed kabuki theater"),
          ),

          Divider(),
          new ListTile(
            subtitle: new Text(
                "London, the capital of England and the United Kingdom,"
                    "is a 21st-century city with history stretching back to Roman times. "
                    "At its centre stand the imposing Houses of Parliament, the iconic ‘Big Ben’ clock tower and Westminster Abbey, "
                    "site of British monarch coronations. Across the Thames River, "
                    "the London Eye observation wheel provides panoramic views of the South Bank cultural complex, and the entire city."),
          ),

          Divider(),
          new ListTile(
            subtitle: new Text(
                "New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. "
                    "At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, "
                    "financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building "
                    "and sprawling Central Park. Broadway theater is staged in neon-lit Times Square."),
          ),

          Divider(),
          new ListTile(
            subtitle: new Text(
                "Shanghai, on China’s central coast, is the country's biggest city and a global financial hub."
                    " Its heart is the Bund, a famed waterfront promenade lined with colonial-era buildings."
                    " Across the Huangpu River rises the Pudong district’s futuristic skyline,"
                    " including 632m Shanghai Tower and the Oriental Pearl TV Tower, with distinctive pink spheres."
                    " Sprawling Yu Garden has traditional pavilions, towers and ponds."),
          ),


          Divider(),
          new ListTile(
            subtitle: new Text(
                "Hong Kong is an autonomous territory, and former British colony, in southeastern China. "
                    "Its vibrant, densely populated urban centre is a major port and"
                    " global financial hub with a skyscraper-studded skyline. "
                    "Central features architectural landmarks like I.M. Pei’s Bank of China Tower. "
                    "Hong Kong is also a major shopping destination, famed for bespoke tailors and Temple Street Night Market."),
          ),

          Divider(),
          new ListTile(
            subtitle: new Text(
                "Paris, France's capital, is a major European city and a global center for art, fashion, gastronomy and culture. "
                    "Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine. "
                    "Beyond such landmarks as the Eiffel Tower and the 12th-century, Gothic Notre-Dame cathedral, "
                    "the city is known for its cafe culture and designer boutiques along the Rue du Faubourg Saint-Honoré."),
          ),


          Divider(),
          new ListTile(
            subtitle: new Text(
                "Milan, a metropolis in Italy's northern Lombardy region,"
                    " is a global capital of fashion and design. "
                    "Home to the national stock exchange, "
                    "it’s a financial hub also known for its high-end restaurants and shops. "
                    "The Gothic Duomo di Milano cathedral and the Santa Maria delle Grazie convent, "
                    "housing Leonardo da Vinci’s mural “The Last Supper,” testify to centuries of art and culture."),
          ),


          Divider(),
          new ListTile(
            subtitle: new Text(
                "Amsterdam is the Netherlands’ capital, known for its artistic heritage, "
                    "elaborate canal system and narrow houses with gabled facades, "
                    "legacies of the city’s 17th-century Golden Age. "
                    "Its Museum District houses the Van Gogh Museum, "
                    "works by Rembrandt and Vermeer at the Rijksmuseum, "
                    "and modern art at the Stedelijk. Cycling is key to the city’s character, "
                    "and there are numerous bike paths."),
          ),


          Divider(),
          new ListTile(
            subtitle: new Text(
                "Toronto, the capital of the province of Ontario, "
                    "is a major Canadian city along Lake Ontario’s northwestern shore. "
                    "It's a dynamic metropolis with a core of soaring skyscrapers, "
                    "all dwarfed by the iconic, free-standing CN Tower. Toronto also has many green spaces, "
                    "from the orderly oval of Queen’s Park to 400-acre High Park and its trails, sports facilities and zoo."),
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
    {"name": "Beijing", "picture": "assets/name/beijing.jpg", "price": "300"},
    {"name": "Toyko", "picture": "assets/name/tokyo.jpg", "price": "330"},
    {"name": "New York", "picture": "assets/name/newyork.jpg", "price": "360"},
    {"name": "Shanghai", "picture": "assets/name/shanghai.jpg", "price": "290"},
    {"name": "Hongkong", "picture": "assets/name/hongkong.jpg", "price": "270"},
    {"name": "Paris", "picture": "assets/name/paris.jpg", "price": "410"},
    {"name": "Milan", "picture": "assets/name/milan.jpg", "price": "340"},
    {"name": "Amsterdam", "picture": "assets/name/amsterdam.jpg", "price": "400"},
    {"name": "London", "picture": "assets/name/london.jpg", "price": "400"},
    {"name": "Toronto", "picture": "assets/name/toronto.jpg", "price": "350"},
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
