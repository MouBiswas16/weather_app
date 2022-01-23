import 'package:apps/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Weather App",
      home: HomeScreen(),
    ),
  );
}
