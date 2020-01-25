import 'package:flutter/material.dart';

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
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
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
                    Container(
//                  padding: const EdgeInsets.all(10),
                      height: 250,
//                      width: 150,

                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(

                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                children: <Widget>[
                                  Container(
//                                    padding: const EdgeInsets.all(10),
//                            padding: EdgeInsets.all(10),
//                          width: double.infinity,
                                    width: 130,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://moviehole.net/img/maxresdefault-74.jpg"),
//                                fit: BoxFit.cover,
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Love",
                                    style: TextStyle(
//                            fontWeight: FontWeight.bold,
                                      fontWeight: FontWeight.normal,
                                      //wordSpacing: 20,
                                      letterSpacing: 0,
                                      fontSize: 17,
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(

                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                children: <Widget>[
                                  Container(
//                                    padding: const EdgeInsets.all(10),
//                            padding: EdgeInsets.all(10),
//                          width: double.infinity,
                                    width: 130,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://moviehole.net/img/maxresdefault-74.jpg"),
//                                fit: BoxFit.cover,
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Love",
                                    style: TextStyle(
//                            fontWeight: FontWeight.bold,
                                      fontWeight: FontWeight.normal,
                                      //wordSpacing: 20,
                                      letterSpacing: 0,
                                      fontSize: 17,
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(

                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                children: <Widget>[
                                  Container(
//                                    padding: const EdgeInsets.all(10),
//                            padding: EdgeInsets.all(10),
//                          width: double.infinity,
                                    width: 130,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://moviehole.net/img/maxresdefault-74.jpg"),
//                                fit: BoxFit.cover,
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Love",
                                    style: TextStyle(
//                            fontWeight: FontWeight.bold,
                                      fontWeight: FontWeight.normal,
                                      //wordSpacing: 20,
                                      letterSpacing: 0,
                                      fontSize: 17,
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
