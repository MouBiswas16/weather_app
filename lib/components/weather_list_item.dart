class Item {
  final int id;
  final String time;
  final String celsius;
  final String day;
  final String dateMonthYear;
  final String image;
  Item({
    required this.id,
    required this.time,
    required this.celsius,
    required this.day,
    required this.dateMonthYear,
    required this.image,
  });
}

List<Item> items = [
  Item(
    id: 0,
    time: "06:00 AM",
    celsius: "24ºC",
    day: "..",
    dateMonthYear: "..",
    image: "assets/images/cloud_3_zap.png",
  ),
  Item(
    id: 1,
    time: "08:00 AM",
    celsius: "26ºC",
    day: "..",
    dateMonthYear: "..",
    image: "assets/images/sun_cloud_mid_rain.png",
  ),
  Item(
    id: 2,
    time: "10:00 AM",
    celsius: "23ºC",
    day: "..",
    dateMonthYear: "..",
    image: "assets/images/big_rain_drops.png",
  ),
  Item(
    id: 3,
    time: "..",
    celsius: "..",
    day: "..",
    dateMonthYear: "..",
    image: "assets/images/sun_cloud_little_rain.png",
  ),
  Item(
    id: 4,
    time: "..",
    celsius: "..",
    day: "..",
    dateMonthYear: "..",
    image: "assets/images/sun_cloud_angled _rain.png",
  ),
  Item(
    id: 5,
    time: "..",
    celsius: "..",
    day: "..",
    dateMonthYear: "..",
    image: "assets/images/moon_cloud_fast_wind.png",
  ),
];
