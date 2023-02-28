// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: Text("Weather app v1"),
        ),
        body: Column(
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 34),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: NetworkImage(
                          "https://w7.pngwing.com/pngs/487/562/png-transparent-sun-logo-sunlight-silhouette-thumbnail.png"),
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                          child: Text(
                            "21°C",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 55),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                          child: Text(
                            "Mostly suny",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              height: 40,
              thickness: 3,
              color: Color.fromARGB(255, 147, 147, 147),
              indent: 20,
              endIndent: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Text(
                        "28°C",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                                child: Text("temp_max")),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Text(
                        "7mph",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                                child: Text("wind")),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Text(
                        "05:55",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                                child: Text("sunrise")),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Text(
                        "18°C",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                                child: Text("temp_min")),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Text(
                        "0%",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                                child: Text("rain")),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Text(
                        "21:37",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                                child: Text("sunset")),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              height: 40,
              thickness: 3,
              color: Color.fromARGB(255, 147, 147, 147),
              indent: 20,
              endIndent: 20,
            ),
          ],
        ),
      ),
    ));
