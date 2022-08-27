// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:theme_change/components/colors.dart';

class DailyWeatherCard extends StatelessWidget {
  const DailyWeatherCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          top: 20,
          child: Container(
            width: 230,
            height: 275,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff594DB5),
                  Color(0xff928ACE),
                  Color(0xff4E41B0),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/moon_cloud_fast_wind.png",
                  height: 134,
                  width: 130,
                ),
                Text(
                  "23°",
                  style: TextStyle(
                    color: textLightColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 72,
                  ),
                ),
                Text(
                  '''Moon Cloud Fast Wind''',
                  style: TextStyle(
                    color: textLightColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 11,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Container(
            height: 34,
            width: 140,
            decoration: BoxDecoration(
              color: textLightColor,
              borderRadius: BorderRadiusDirectional.circular(40),
            ),
            child: Center(
              child: Text(
                "Sunday, 8 March 2021",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 11,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
