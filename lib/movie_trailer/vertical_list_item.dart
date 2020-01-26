import 'package:flutter/material.dart';
import 'package:flutter_app/movie_trailer/models/Movie.dart';

class VerticalListItem extends StatelessWidget {
  final int index;

  //const
//  VerticalListItem({this.index});
  VerticalListItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        children: <Widget>[
          Card(
              elevation: 10,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 170,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius:
                            //BorderRadius.circular(5),
                            BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          topLeft: Radius.circular(5),
                        ),
                        image: DecorationImage(
//                                              fit: BoxFit.cover,
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              //"https://moviehole.net/img/maxresdefault-74.jpg"
                              bestMovieList[index].imageUrl),
                        )),
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      height: 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Avengers",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 170,
                            child: Text(
                              "how are u man i hope u well, i wait u for a lot of years, but i couldn't call u as i was fucking busy",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              )),
          SizedBox(
            height: 10,
//            height: 5,
          )
        ],
      ),
    );
  }
}
