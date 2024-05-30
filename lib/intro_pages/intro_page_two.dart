import 'package:flutter/material.dart';

class IntroPageTwo extends StatelessWidget {
  const IntroPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(0, 0.3),
            child: Text(
              "Let's start journey\nwith Nike",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.46),
            child: Text(
              "Smart, Gorgeous & Fashionable\nCollection Explor Now",
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
            alignment: const Alignment(0, -0.5),
            child: Image.asset(
              'assets/shoe_1.png',
            ),
          ),
          Align(
            alignment: const Alignment(0.7, -0.7),
            child: Image.asset(
              'assets/misc_04.png',
              scale: 0.8,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          Align(
            alignment: const Alignment(-0.9, -0.7),
            child: Image.asset(
              'assets/highlight_10.png',
              scale: 0.8,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          Align(
            alignment: const Alignment(0, -0.04),
            child: Image.asset(
              'assets/shadow.png',
              scale: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
