import 'package:flutter/material.dart';

class IntroPageThree extends StatelessWidget {
  const IntroPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(0, 0.3),
            child: Text(
              "You have the\npower to",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.46),
            child: Text(
              "discover world in our stylish\n and durable sneakers",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          Align(
            alignment: const Alignment(-0.7, 0.38),
            child: Image.asset('assets/vector_nike.png', scale: 0.6),
          ),
          Align(
            alignment: const Alignment(0, -0.4),
            child: Image.asset(
              'assets/outline.png',
            ),
          ),
          Align(
            alignment: const Alignment(0, -0.5),
            child: Image.asset(
              'assets/jordan_mid.png',
            ),
          ),
          Align(
            alignment: const Alignment(-0.7, -0.7),
            child: Image.asset(
              'assets/misc_04.png',
              scale: 0.7,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.06),
            child: Image.asset(
              'assets/shadow.png',
              scale: 0.9,
            ),
          ),
        ],
      ),
    );
  }
}
