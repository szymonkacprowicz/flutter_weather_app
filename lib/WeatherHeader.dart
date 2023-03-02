// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';

import 'package:weather_app/geolocator/global_controller.dart';

class WeatherHeader extends StatefulWidget {
  @override
  State<WeatherHeader> createState() => _WeatherHeaderState();
}

class _WeatherHeaderState extends State<WeatherHeader> {
  String city = '';

  @override
  void initState() {
    super.initState();
    getAddress(globalController.getLattitude().value,
        globalController.getLongtude().value);
  }

  getAddress(lat, long) async {
    List<Placemark> placemark =
        await placemarkFromCoordinates(52.43170037301889, 16.9270623531121);
    Placemark place = placemark[0];
    setState(() {
      city = place.locality!;
      print(placemark);
    });
  }

  // call
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: false);

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
                    "$city",
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
                      "Mostly sunny",
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
