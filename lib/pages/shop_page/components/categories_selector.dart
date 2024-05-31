import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/categories.dart';
import '../bloc/category_bloc.dart';
import 'custom_category_tile.dart';

class CategoriesSelector extends StatelessWidget {
  const CategoriesSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          return ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              CustomCategoryTile(
                categoryOfTile: Categories.all,
                text: 'All shoes',
                ontap: () {
                  context
                      .read<CategoryBloc>()
                      .add(CategoryChange(category: Categories.all));
                },
              ),
              CustomCategoryTile(
                categoryOfTile: Categories.sneakers,
                text: 'Sneakers',
                ontap: () {
                  context.read<CategoryBloc>().add(
                        CategoryChange(category: Categories.sneakers),
                      );
                },
              ),
              CustomCategoryTile(
                categoryOfTile: Categories.running,
                text: 'Running',
                ontap: () {
                  context
                      .read<CategoryBloc>()
                      .add(CategoryChange(category: Categories.running));
                },
              ),
              CustomCategoryTile(
                categoryOfTile: Categories.trekking,
                text: 'Trekking',
                ontap: () {
                  context.read<CategoryBloc>().add(
                        CategoryChange(category: Categories.trekking),
                      );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
