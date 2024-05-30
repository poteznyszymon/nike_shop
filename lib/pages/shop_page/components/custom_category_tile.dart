import 'package:flutter/material.dart';

class CustomCategoryTile extends StatelessWidget {
  final String text;
  final bool aciveCategory;
  const CustomCategoryTile({
    required this.text,
    super.key,
    required this.aciveCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.26,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: aciveCategory
              ? Theme.of(context).colorScheme.background
              : Theme.of(context).colorScheme.inversePrimary,
        ),
        child: Center(
          child: Text(
            text,
            style: aciveCategory
                ? Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: Colors.white)
                : Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ),
    );
  }
}
