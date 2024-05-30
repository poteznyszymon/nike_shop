import 'package:flutter/material.dart';

class IntroPageOne extends StatelessWidget {
  const IntroPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(0, -0.6),
            child: Text(
              'Welcome to\nNike',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: Colors.white),
            ),
          ),
          Align(
            alignment: const Alignment(-0.7, 0.3),
            child: Image.asset('assets/vector_nike.png', scale: 0.6),
          ),
          Align(
            alignment: const Alignment(1, 0),
            child: Image.asset('assets/image3.png'),
          ),
          Align(
            alignment: const Alignment(-0.55, -0.66),
            child: Image.asset(
              'assets/highlight_5.png',
            ),
          ),
          Align(
            alignment: const Alignment(0, -0.4),
            child: Image.asset(
              'assets/undertext.png',
            ),
          ),
          Align(
            alignment: const Alignment(0.8, 0.5),
            child: Image.asset(
              'assets/highlight_10.png',
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          Align(
            alignment: const Alignment(-0.7, 1),
            child: Transform(
              transform: Matrix4.rotationZ(
                4.3, // here
              ),
              child: Image.asset(
                'assets/highlight_10.png',
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.7, -0.13),
            child: Image.asset(
              'assets/misc_04.png',
              scale: 0.8,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
