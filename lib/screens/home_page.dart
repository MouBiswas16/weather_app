// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, sized_box_for_whitespace

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const textColor = Color(0xff333333);
const textLightColor = Color(0xffF5F5F5);
const defultPaddin = 20.0;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F0FA),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
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
                  SizedBox(height: defultPaddin),
                  CarouselSlider(
                    options: CarouselOptions(height: 350),
                    items: [1, 2, 3, 4].map((i) {
                      return Builder(builder: (BuildContext context) {
                        return DailyWeatherCard();
                      });
                    }).toList(),
                  ),
                ],
              ),
            ),
            Container(
              color: textLightColor,
              // height: 122,
              // width: 315,
              child: Column(
                children: [
                  Transform.translate(
                    offset: Offset(0, -60),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: defultPaddin),
                      height: 122,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: textLightColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          WeatherDetails(
                            imageName: "carbon_humidity",
                            value: "75%",
                            label: "Humidity",
                          ),
                          SizedBox(width: defultPaddin),
                          WeatherDetails(
                            imageName: "tabler_wind",
                            value: "8 km/h",
                            label: "Wind",
                          ),
                          SizedBox(width: defultPaddin),
                          WeatherDetails(
                            imageName: "ion_speedometer",
                            value: "1011",
                            label: "Air Pressure",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: defultPaddin, vertical: defultPaddin),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        Row(
                          children: [
                            Text(
                              "Next 7 Days",
                              style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: textColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 132,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return HourlyWeatherCard();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
            style: TextStyle(
              color: textLightColor,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
          Image.asset(
            "assets/images/moon_cloud_fast_wind.png",
            scale: 4,
          ),
          Text(
            "24°",
            style: TextStyle(
              color: textLightColor,
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}

class WeatherDetails extends StatelessWidget {
  final String? imageName;
  final String? value;
  final String? label;
  const WeatherDetails({Key? key, this.imageName, this.value, this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/images/$imageName.svg"),
        Text(
          "$value",
          style: TextStyle(
            fontSize: 12,
            color: textColor,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          "$label",
          style: TextStyle(
            fontSize: 9,
            color: Color(0xffC8C5F4),
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
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
