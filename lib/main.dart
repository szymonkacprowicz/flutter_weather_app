// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/WeatherBottomSection.dart';

import 'WeatherHeader.dart';
import 'WeatherMiddleSection.dart';

// todo wynieść widgety, przypisac do nich zmienne z danymi

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
          child: Column(children: [
            WeatherHeader(),
            Divider(
              height: 40,
              thickness: 3,
              color: Color.fromARGB(255, 147, 147, 147),
              indent: 5,
              endIndent: 5,
            ),
            WeatherMiddleSection(),
            SizedBox(
              height: 5,
            ),
            Divider(
              height: 40,
              thickness: 3,
              color: Color.fromARGB(255, 147, 147, 147),
              indent: 5,
              endIndent: 5,
            ),
            HorizontalCardContainer()
          ]),
        ),
      ),
    ));
