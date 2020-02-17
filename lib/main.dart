import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: ''),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}





class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[






          Padding(
            padding: EdgeInsets.all(40),
            child: Text(
              "Welcome",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),



          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 4.0),
                  color: Colors.grey,
                  blurRadius: 24.0,
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                    //prefixIcon: Icon(HotelBookingConcept.ic_search),
                    hintText: "Where you want to go?",
                    hintStyle:
                    TextStyle(fontSize: 14),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 10)),
              ),
            ),
          ),


          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                Text("Find your perfect places",
                    style: TextStyle(
                        fontSize: 24, color:Colors.grey, )),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Places",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600)),
                    Text("View all",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ],
            ),
          ),








          //place


        ],
      ),
    );
  }
}
