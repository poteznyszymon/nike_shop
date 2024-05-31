import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_shop/models/categories.dart';
import 'package:nike_shop/pages/shop_page/bloc/category_bloc.dart';
import 'components/custom_category_tile.dart';
import 'components/custom_search_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CustomSearchField(),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Select category',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            child: Padding(
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
                          context.read<CategoryBloc>().add(
                              CategoryChange(category: Categories.running));
                        },
                      ),
                      CustomCategoryTile(
                        categoryOfTile: Categories.trekking,
                        text: 'Trekking',
                        ontap: () {
                          context.read<CategoryBloc>().add(
                              CategoryChange(category: Categories.trekking));
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
