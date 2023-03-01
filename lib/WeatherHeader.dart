// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WeatherHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Text(
                    "Poznań, PL",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Text(
                    "${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                child: Icon(
                  Icons.sunny,
                  color: Colors.grey[200],
                  size: 100,
                )),
            Column(
              children: <Widget>[
                Column(
                  children: [
                    Text(
                      "21°",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                          color: Colors.grey[200]),
                    ),
                    Text(
                      "Mostly suny",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
