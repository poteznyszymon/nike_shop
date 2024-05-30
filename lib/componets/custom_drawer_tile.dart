import 'package:flutter/material.dart';

class CustomDrawerTile extends StatelessWidget {
  final String text;
  final Image image;
  final void Function()? ontap;
  const CustomDrawerTile({
    super.key,
    required this.text,
    required this.image,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: image,
      title: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
      ),
    );
  }
}
