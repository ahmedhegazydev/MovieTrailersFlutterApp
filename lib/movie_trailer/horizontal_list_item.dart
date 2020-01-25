import 'package:flutter/material.dart';

class HorizontalListItem extends StatelessWidget {
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
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://moviehole.net/img/maxresdefault-74.jpg"),
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
    );
  }
}
