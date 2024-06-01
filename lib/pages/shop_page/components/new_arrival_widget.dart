import 'package:flutter/material.dart';

class NewArrivalWidget extends StatelessWidget {
  const NewArrivalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.17,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Summer Sale',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            Text(
                              '15 % OFF',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                      color: Color.fromRGBO(103, 77, 197, 1)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: const Alignment(0.7, -1),
              child: Image.asset('assets/new_shoe.png', scale: 3.5),
            ),
            Align(
              alignment: const Alignment(-0.95, 0.6),
              child: Image.asset(
                'assets/star.png',
                scale: 0.7,
              ),
            ),
            Align(
              alignment: const Alignment(-0.3, -0.7),
              child: Image.asset(
                'assets/star.png',
                scale: 0.7,
              ),
            ),
            Align(
              alignment: const Alignment(-0, 0.45),
              child: Image.asset(
                'assets/star.png',
                scale: 0.7,
              ),
            ),
            Align(
              alignment: const Alignment(0.95, -0.4),
              child: Image.asset(
                'assets/star.png',
                scale: 0.7,
              ),
            ),
            Align(
              alignment: const Alignment(0.1, -0.4),
              child: Image.asset(
                'assets/new.png',
                scale: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
