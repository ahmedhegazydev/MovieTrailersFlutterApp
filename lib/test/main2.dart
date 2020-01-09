import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Movie Trailers",
//        style: TextStyle(
//          fontSize: 20.0,
//          letterSpacing: 10.0,
//          fontWeight: FontWeight.bold,
//          color:
//
//        ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Image(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ-P0QraC318qxOTFkn6Pub1IQXIBBxcQ-CFpmRLIJ4Madlglqp'),
//          image: AssetImage('assets/love.jpeg'),
        ),
//        child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ-P0QraC318qxOTFkn6Pub1IQXIBBxcQ-CFpmRLIJ4Madlglqp'),
//        child: Image.asset("assets/love.jpeg"),
//        child: Text(
//          "Ahmed Hegazy  77",
//          style: TextStyle(
//              fontSize: 20.0,
//              letterSpacing: 10.0,
//              fontWeight: FontWeight.bold,
//              color: Colors.red,
//              fontFamily: 'Balonku'),
//        ),
      ),
    );
  }
}
