import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/hotel/01.jpg',
            image_caption: '1',
          ),
          Category(
            image_location: 'assets/hotel/02.jpg',
            image_caption: '2',
          ),
          Category(
            image_location: 'assets/hotel/03.jpg',
            image_caption: '3',
          ),
          Category(
            image_location: 'assets/hotel/04.jpg',
            image_caption: '4',
          ),
          Category(
            image_location: 'assets/hotel/05.jpg',
            image_caption: '5',
          ),
          Category(
            image_location: 'assets/hotel/06.jpg',
            image_caption: '6',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 60,
                height: 100,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: new TextStyle(fontSize: 12.0),
                ),
              )),
        ),
      ),
    );
  }
}
