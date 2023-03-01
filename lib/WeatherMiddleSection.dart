// ignore_for_file: file_names

import 'package:flutter/material.dart';

class WeatherMiddleSection extends StatelessWidget {
  const WeatherMiddleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
              child: const Text(
                "28°C",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: const Text("temp_max"),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Text(
                    "18°C",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Text("temp_min"),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
              child: Text(
                "7mph",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Text("wind"),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Text(
                    "0%",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Text("rain"),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
              child: Text(
                "05:55",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Text("sunrise"),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Text(
                    "21:37",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Text("sunset"),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
