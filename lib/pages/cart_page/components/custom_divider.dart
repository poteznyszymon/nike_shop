import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(30, (index) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.003,
              color: Theme.of(context).colorScheme.surface.withOpacity(0.5),
            ),
          ),
        );
      }),
    );
  }
}
