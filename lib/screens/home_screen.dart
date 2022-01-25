// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const textColor = Color(0xff333333);
const defultPaddin = 20.0;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F0FA),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: defultPaddin),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      "Pasuruan",
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "17.45 PM",
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: defultPaddin * 2),
                    CarouselSlider(
                      options: CarouselOptions(height: 350),
                      items: [1, 2, 3, 4].map((i) {
                        return Builder(builder: (BuildContext context) {
                          return DailyWeatherCard();
                        });
                      }).toList(),
                    ),
                    SizedBox(
                      height: 112,
                    ),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        SizedBox(
                          height: 260,
                          width: double.infinity,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffD4D1F0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DailyWeatherCard extends StatelessWidget {
  const DailyWeatherCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        // SizedBox(
        //   height: 300,
        //   width: 230,
        // ),
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
                  Color(0xff594DB5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/images/Moon_cloud_fast_wind.svg",
                  height: 134,
                  width: 130,
                ),
                Text(
                  "23°",
                  style: TextStyle(
                    color: Color(0xffF5F5F5),
                    fontWeight: FontWeight.w700,
                    fontSize: 72,
                  ),
                ),
                Text(
                  "Moon Cloud Fast Wind",
                  style: TextStyle(
                    color: Color(0xffF5F5F5),
                    fontWeight: FontWeight.w900,
                    fontSize: 11,
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
              color: Color(0xffFFFFFF),
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
