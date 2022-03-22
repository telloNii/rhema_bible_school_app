import 'package:flutter/material.dart';

class Slide {
  final String imageDir;
  final String? subImageDir;

  Slide({
    required this.imageDir,
    this.subImageDir,
  });
}

final slideList = [
  Slide(
    imageDir: 'assets/images/onboarding_logo1.png',
  ),
  Slide(
    imageDir: 'assets/images/onboarding_logo2.png',
  ),
  Slide(
    imageDir: 'assets/images/onboarding_logo3.png',
  ),
  Slide(
    imageDir: 'assets/images/onboarding_logo4.png',
    subImageDir: 'assets/images/onboarding_logo5.png',
  ),
];
