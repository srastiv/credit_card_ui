import 'package:flutter/material.dart';
import 'package:payment_ui/features/payment/presentation/constants/colors.dart';

class HomeScreenIcons {
  String image;
  Color color;
  String text;
  String numbers;
  HomeScreenIcons({
    required this.image,
    required this.color,
    required this.text,
    required this.numbers,
  });
}

List<HomeScreenIcons> homeScreenIcons = [
  HomeScreenIcons(
    image: "assets/images/scan.png",
    color: kLavender,
    text: "Scan new",
    numbers: "Scanned 483",
  ),
  HomeScreenIcons(
    image: "assets/images/counterfeit.png",
    color: kPeach,
    text: "Counterfeits",
    numbers: "Counterfeited 32",
  ),
  HomeScreenIcons(
    image: "assets/images/success.png",
    color: kCyan,
    text: "Success",
    numbers: "Checkouts 8",
  ),
  HomeScreenIcons(
    image: "assets/images/directory.png",
    color: kSkyBlue,
    text: "Directory",
    numbers: "History 8",
  ),
];
