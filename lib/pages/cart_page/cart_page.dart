import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_shop/intro_pages/components/custom_button.dart';
import 'package:nike_shop/pages/cart_page/bloc/cart_bloc.dart';
import 'package:nike_shop/pages/cart_page/components/custom_text_row_cart.dart';
import 'components/custom_cart_tile.dart';
import 'components/custom_divider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final _cart = state.cart;
        double _subtotal = _cart.fold(0, (sum, item) => sum + item.price);
        if (state.cart.isEmpty) {
          return const Center(
            child: Text('Your cart is empty 😥'),
          );
        } else {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.onBackground,
            body: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('${_cart.length} items',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: _cart.length,
                        itemBuilder: (context, index) {
                          return CustomCartTile(
                            index: index,
                            shoe: _cart[index],
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.337,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextRowCart(
                          firstText: 'Subtotal',
                          secondText: '\$$_subtotal',
                          isTotal: false,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        const CustomTextRowCart(
                          firstText: 'Delivery',
                          secondText: '\$30',
                          isTotal: false,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        const CustomDivider(),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        CustomTextRowCart(
                          firstText: 'Total cost',
                          secondText: '\$${_subtotal + 30}',
                          isTotal: true,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05),
                        CustomButton(
                          color: Theme.of(context).colorScheme.background,
                          textColor:
                              Theme.of(context).colorScheme.inversePrimary,
                          text: 'Checkout',
                          ontap: () => () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
