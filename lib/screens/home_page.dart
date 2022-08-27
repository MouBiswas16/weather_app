// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, sized_box_for_whitespace

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/colors.dart';
import '../components/daily_weather_card.dart';
import '../components/hourly_weather_card.dart';
import '../components/weather_details.dart';

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
                  SizedBox(height: defultPaddin),
                  Text(
                    "Pasuruan",
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w800,
                      color: textColor,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "17.45 PM",
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: textColor,
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
            SizedBox(height: 30),
            Container(
              child: Column(
                children: [
                  Transform.translate(
                    offset: Offset(0, -60),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 122,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: textLightColor,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff9087D4),
                            spreadRadius: 0,
                            blurRadius: 15,
                            offset: Offset(2, 20),
                          ),
                        ],
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
                          SizedBox(width: defultPaddin),
                          WeatherDetails(
                            imageName: "ic_round-visibility",
                            value: "6 km",
                            label: "Visibility",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defultPaddin),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today",
                          style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                            color: textColor,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Next 7 Days",
                              style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.w900,
                                color: textColor,
                                fontSize: 16,
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
                  SizedBox(height: 28),
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
