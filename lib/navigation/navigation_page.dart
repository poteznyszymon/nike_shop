import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nike_shop/navigation/bloc/page_navigation_bloc.dart';
import '../componets/custom_drawer.dart';
import '../pages/cart_page/cart_page.dart';
import '../pages/shop_page/shop_page.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      const HomePage(),
      const CartPage(),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        elevation: 0,
        centerTitle: true,
        title: Stack(
          children: [
            Align(
              child: Text(
                'Explore',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Align(
              alignment: const Alignment(-0.6, 0),
              child: Image.asset(
                'assets/highlight_5.png',
                color: Colors.black,
                scale: 1.5,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/bag.png',
              color: Colors.black,
            ),
          )
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Image.asset('assets/app_bar_icon.png'),
            );
          },
        ),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: GNav(
        onTabChange: (value) {
          context.read<PageNavigationBloc>().add(TabChange(tabIndex: value));
        },
        color: Theme.of(context).colorScheme.surface,
        activeColor: Theme.of(context).colorScheme.background,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        tabs: [
          GButton(
            leading: BlocBuilder<PageNavigationBloc, PageNavigationState>(
              builder: (context, state) {
                return SizedBox(
                  child: Image.asset(
                    fit: BoxFit.fill,
                    'assets/home_icon.png',
                    scale: 0.9,
                    color: state.tabIndex == 0
                        ? Theme.of(context).colorScheme.background
                        : Theme.of(context).colorScheme.surface,
                  ),
                );
              },
            ),
            icon: Icons.home,
            text: ' Shop',
          ),
          GButton(
            leading: BlocBuilder<PageNavigationBloc, PageNavigationState>(
              builder: (context, state) {
                return SizedBox(
                  child: Image.asset(
                    fit: BoxFit.fill,
                    'assets/bag.png',
                    scale: 0.9,
                    color: state.tabIndex == 1
                        ? Theme.of(context).colorScheme.background
                        : Theme.of(context).colorScheme.surface,
                  ),
                );
              },
            ),
            icon: Icons.shopping_bag_rounded,
            text: ' Cart',
          ),
        ],
      ),
      body: BlocBuilder<PageNavigationBloc, PageNavigationState>(
        builder: (context, state) {
          return _pages[state.tabIndex];
        },
      ),
    );
  }
}
