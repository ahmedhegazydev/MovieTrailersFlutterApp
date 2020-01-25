import 'package:flutter/material.dart';
import 'package:flutter_app/movie_trailer/horizontal_list_item.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return Container();
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Trailers"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Center(
//          child: Text("Hello"),

          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
//                padding: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Recommended",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        FlatButton(
                          child: Text("View All"),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Container(
//                  padding: const EdgeInsets.all(10),
                    height: 250,
//                      width: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        new HorizontalListItem(),
                        new HorizontalListItem(),
                        new HorizontalListItem(),
                        new HorizontalListItem(),
                      ],
                    ),
                  ),


                  //Adding vertical space between Recommended and best of 2019
                  SizedBox(height: 20,),


                  Padding(
//                padding: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Best of 2019",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        FlatButton(
                          child: Text("View All"),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
