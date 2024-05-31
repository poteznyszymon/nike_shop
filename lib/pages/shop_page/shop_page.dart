import 'package:flutter/material.dart';
import 'package:nike_shop/data/shoe_list.dart';
import 'package:nike_shop/models/shoe_model.dart';
import 'components/categories_selector.dart';
import 'components/custom_search_field.dart';
import 'components/shoe_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Shoe> shoes = shoesList;
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
                      .copyWith(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            child: const CategoriesSelector(),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular shoes',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                InkWell(
                  onTap: () {},
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
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: MediaQuery.of(context).size.width * 0.53,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: shoes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: ShoeTile(
                      shoe: shoes[index],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
