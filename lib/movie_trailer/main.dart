import 'package:flutter/material.dart';

import 'dashboard_screen.dart';

//void main() => runApp(MaterialApp(
//  home: Scaffold(
//    appBar: AppBar(
//      centerTitle: true,
//      title: Text("Movie Trailer"),
//    ),
//    body: MovieTrailerDashBoard(),
//
//  ),
//));
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movie Trailer",
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primarySwatch: Colors.indigo),
      home: DashboardScreen(),
    );
  }
}
