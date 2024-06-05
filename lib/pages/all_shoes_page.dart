import 'package:flutter/material.dart';
import 'package:nike_shop/pages/shop_page/components/shoe_tile.dart';
import '../data/shoe_list.dart';
import '../models/shoe_model.dart';

class AllShoesPage extends StatelessWidget {
  const AllShoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Shoe> shoes = shoesList;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 220,
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: shoes.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent:
                      (MediaQuery.of(context).size.width / 2) - 30,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.829,
                ),
                itemBuilder: (context, index) {
                  return ShoeTile(shoe: shoes[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
