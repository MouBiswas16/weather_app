import 'package:flutter/material.dart';
import 'package:theme_change/screens/home_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Weather App",
      home: HomePage(),
    ),
  );
}
