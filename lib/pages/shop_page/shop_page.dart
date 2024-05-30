import 'package:flutter/material.dart';
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
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: const [
                  CustomCategoryTile(
                    text: 'All shoes',
                    aciveCategory: true,
                  ),
                  CustomCategoryTile(
                    text: 'Sneakers',
                    aciveCategory: false,
                  ),
                  CustomCategoryTile(
                    text: 'Running',
                    aciveCategory: false,
                  ),
                  CustomCategoryTile(
                    text: 'Trekking',
                    aciveCategory: false,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
