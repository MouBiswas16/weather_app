// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme_change/components/colors.dart';

class HourlyWeatherCard extends StatelessWidget {
  const HourlyWeatherCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      height: 132,
      margin: EdgeInsets.symmetric(horizontal: defultPaddin),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff594DB5),
            Color(0xff928ACE),
            Color(0xff594DB5),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "06:00 AM",
            style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: textLightColor,
            ),
          ),
          Image.asset(
            "assets/images/moon_cloud_fast_wind.png",
            scale: 4,
          ),
          Text(
            "24°",
            style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.w900,
              fontSize: 18,
              color: textLightColor,
            ),
          ),
        ],
      ),
    );
  }
}
