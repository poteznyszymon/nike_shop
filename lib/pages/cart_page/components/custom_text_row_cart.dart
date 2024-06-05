import 'package:flutter/material.dart';

class CustomTextRowCart extends StatelessWidget {
  final String firstText;
  final String secondText;
  final bool isTotal;
  const CustomTextRowCart({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.isTotal,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 17,
              color: !isTotal
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.secondary),
        ),
        Text(
          secondText,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 17,
              color: !isTotal
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.background),
        ),
      ],
    );
  }
}
