import 'package:flutter/material.dart';

class list {
  final String name;
  final String imageUrl;

  list({required this.imageUrl, required this.name});
}

List<list> categoryData = [
  list(
    imageUrl: "assets/fold.jpg",
    name: "DILIPAT",
  ),
  list(
    imageUrl: "assets/laundry.png",
    name: "CUCI KERING",
  ),
  list(
    imageUrl: "assets/wet.png",
    name: "CUCI BASAH",
  ),
  list(
    imageUrl: "assets/iron.png",
    name: "SETRIKA",
  ),
  list(
    imageUrl: "assets/sew.png",
    name: "JAHIT",
  ),
];
