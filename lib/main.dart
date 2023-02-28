// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme:
            GoogleFonts.ptSansTextTheme().apply(bodyColor: Colors.grey[200]),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Weather app v1"),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                HSLColor.fromAHSL(1, 214, 0.89, 0.61).toColor(),
                HSLColor.fromAHSL(1, 214, 0.89, 0.21).toColor()
              ],
            ),
          ),
          child: Column(
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Icon(
                        Icons.sunny,
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
              Divider(
                height: 40,
                thickness: 3,
                color: Color.fromARGB(255, 147, 147, 147),
                indent: 5,
                endIndent: 5,
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
                indent: 5,
                endIndent: 5,
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Text("Next 5 days"),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                child: Text(
                  "0%",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
