// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.blue.withOpacity(0.20),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Pasuruan",
          style: TextStyle(
            color: Color(0xff333333),
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 230,
            height: 275,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff594DB5),
                  Color(0xff928ACE),
                  Color(0xff594DB5),
                ],
                // stops: [0.1, 0.3, 0.7],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "asstes/images/Moon_cloud_fast_wind.png",
                  // scale: 1.0,
                ),
                Text(
                  "23°",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 72,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Monn Cloud Fast Wind".toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
