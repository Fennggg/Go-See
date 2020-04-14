import 'package:flutter/material.dart';

class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('About'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.hotel,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: (const Text.rich(
        TextSpan(
          text: 'Travel Guide APP\n'
                'Look for differences city\n'
                'Easy to search',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          // default text style
        ),
      )),
    );
  }
}
