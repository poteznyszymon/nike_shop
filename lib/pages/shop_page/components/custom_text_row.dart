import 'package:flutter/material.dart';

class CustomTextRow extends StatelessWidget {
  final String text;
  final void Function()? ontap;
  const CustomTextRow({
    super.key,
    required this.text,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          InkWell(
            onTap: ontap,
            child: Text(
              'See all',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.background),
            ),
          ),
        ],
      ),
    );
  }
}
