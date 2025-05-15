import 'package:flutter/material.dart';

class CustomGradientContainer extends StatelessWidget {

  const CustomGradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        colors: [
        Color.fromARGB(255, 26, 2, 80),
    Color.fromARGB(255, 50, 19, 131),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),
    );
  }
}

// for use this just call like CustomGradientContainer()
