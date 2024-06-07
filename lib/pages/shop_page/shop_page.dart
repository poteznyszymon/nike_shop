import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_shop/data/shoe_list.dart';
import 'package:nike_shop/models/categories.dart';
import 'package:nike_shop/models/shoe_model.dart';
import 'package:nike_shop/navigation/bloc/page_navigation_bloc.dart';
import 'package:nike_shop/pages/shop_page/bloc/category_bloc.dart';
import 'components/categories_selector.dart';
import 'components/custom_search_field.dart';
import 'components/custom_text_row.dart';
import 'components/new_arrival_widget.dart';
import 'components/shoe_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Shoe> shoes = shoesList;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomSearchField(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            CustomTextRow(
              text: 'Popular shoes',
              ontap: () {
                context.read<PageNavigationBloc>().add(TabChange(tabIndex: 2));
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: MediaQuery.of(context).size.width * 0.59,
                child: BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
                    final filteredShoes = state.category == Categories.all
                        ? shoes
                        : shoes
                            .where((shoe) => shoe.category == state.category)
                            .toList();
                    return ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: filteredShoes.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: ShoeTile(
                            shoe: filteredShoes[index],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            CustomTextRow(
              text: 'New Arrivals',
              ontap: () {},
            ),
            const NewArrivalWidget()
          ],
        ),
      ),
    );
  }
}
