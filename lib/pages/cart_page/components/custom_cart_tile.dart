import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:nike_shop/models/shoe_model.dart';
import 'package:nike_shop/pages/cart_page/bloc/cart_bloc.dart';

class CustomCartTile extends StatelessWidget {
  final Shoe shoe;
  final int index;
  const CustomCartTile({
    super.key,
    required this.shoe,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 0.2,
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(12),
              flex: 1,
              backgroundColor: Theme.of(context).colorScheme.outline,
              autoClose: true,
              icon: Icons.delete_outlined,
              onPressed: (context) {
                context.read<CartBloc>().add(ShoeRemove(index: index));
              },
            ),
          ],
        ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
