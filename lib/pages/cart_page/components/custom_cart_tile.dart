import 'package:flutter/material.dart';
import 'package:nike_shop/models/shoe_model.dart';

class CustomCartTile extends StatelessWidget {
  final Shoe shoe;
  const CustomCartTile({
    super.key,
    required this.shoe,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.11,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Center(child: Image.asset(shoe.imageUrl)),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.08),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shoe.model,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontSize: 18),
                ),
                Text(
                  '\$${shoe.price.toString()}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
