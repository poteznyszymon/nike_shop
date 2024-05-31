import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_shop/pages/shop_page/bloc/category_bloc.dart';
import '../../../models/categories.dart';

class CustomCategoryTile extends StatelessWidget {
  final String text;
  final void Function()? ontap;
  final Categories categoryOfTile;
  const CustomCategoryTile({
    required this.text,
    super.key,
    required this.ontap,
    required this.categoryOfTile,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        final Categories currentCategory = state.category;
        return GestureDetector(
          onTap: ontap,
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: categoryOfTile == currentCategory
                    ? Theme.of(context).colorScheme.background
                    : Theme.of(context).colorScheme.inversePrimary,
              ),
              child: Center(
                child: Text(
                  text,
                  style: categoryOfTile == currentCategory
                      ? Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(color: Colors.white)
                      : Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
