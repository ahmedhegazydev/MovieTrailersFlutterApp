import 'package:flutter/material.dart';

import 'horizontal_list_item.dart';
import 'models/Movie.dart';
import 'vertical_list_item.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var movie = Movie();

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
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
                      //child: ListView(
                      child: ListView.builder(
                        itemBuilder: (context, i) => HorizontalListItem(i),
                        //itemCount: new Movie().bestMovieList.length,
//                        itemCount: movie.recommendedMovieList.length,
                        itemCount: recommendedMovieList.length,
                        scrollDirection: Axis.horizontal,

//                        children: <Widget>[
//                          new HorizontalListItem(),
//                          new HorizontalListItem(),
//                          new HorizontalListItem(),
//                          new HorizontalListItem(),
//                        ],
                      ),
                    ),

                    //Adding vertical space between Recommended and best of 2019
                    SizedBox(
                      height: 20,
                    ),

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
                    Container(
                      height: 660,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      //child: ListView(
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: bestMovieList.length,
                        itemBuilder: (context, index) =>
                            VerticalListItem(index),
//                        children: <Widget>[
//                          VerticalListItem(),
//                          VerticalListItem(),
//                          VerticalListItem(),
//                        ],
//
                      ),
                    ),

//                    SizedBox(height: 10,),//space

                    Padding(
//                padding: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Top Rated Movies",
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
                      //child: ListView(
                      child: ListView.builder(
                        itemCount: topRatedMovieList.length,
                        itemBuilder: (context, index) =>
                            HorizontalListItem(index),
                        scrollDirection: Axis.horizontal,

//                        children: <Widget>[
//                          new HorizontalListItem(),
//                          new HorizontalListItem(),
//                          new HorizontalListItem(),
//                          new HorizontalListItem(),
//                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
