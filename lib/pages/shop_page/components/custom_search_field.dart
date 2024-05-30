import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 15,
            offset: const Offset(4, 4),
          ),
          BoxShadow(
            color: Theme.of(context).colorScheme.inversePrimary,
            blurRadius: 100,
            offset: const Offset(-4, -4),
          )
        ],
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Image.asset('assets/search_icon.png'),
              border: InputBorder.none,
              hintText: 'Looking for shoes'),
        ),
      ),
    );
  }
}
