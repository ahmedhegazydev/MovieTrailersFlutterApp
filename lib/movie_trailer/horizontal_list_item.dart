import 'package:flutter/material.dart';

import 'models/Movie.dart';


class HorizontalListItem extends StatelessWidget {

  final int index;

  //const
//  HorizontalListItem({this.index});//init the index
  HorizontalListItem(this.index); //init the index

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Container(
//                                    padding: const EdgeInsets.all(10),
//                            padding: EdgeInsets.all(10),
//                          width: double.infinity,
                width: 130,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: NetworkImage(
                          recommendedMovieList[index].imageUrl
//                          "https://moviehole.net/img/maxresdefault-74.jpg"
                      ),
//                                fit: BoxFit.cover,
                      fit: BoxFit.fill,
                    )),
              ),
            ),

            //Adding vertical space between text and image
            SizedBox(
              height: 3,
            ),
            Text(
              //"Love",
              recommendedMovieList[index].title,
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
    );
  }
}
