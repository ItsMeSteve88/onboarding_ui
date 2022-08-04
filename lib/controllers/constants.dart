import 'package:flutter/material.dart';

// Colors

const bgColor = Color(0xFFE0E0E0);
const boxColor = Color.fromARGB(255, 149, 112, 219);
const textColor = Colors.black;

// Progress dots on OnboardingPage

Widget createProgressDots(bool isActiveScreen) {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 8,
    ),
    height: isActiveScreen ? 15 : 10,
    width: isActiveScreen ? 15 : 10,
    decoration: BoxDecoration(
      color: isActiveScreen ? boxColor : Colors.grey,
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
    ),
  );
}

