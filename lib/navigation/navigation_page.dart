import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nike_shop/navigation/bloc/page_navigation_bloc.dart';
import '../componets/custom_drawer.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/person.png',
                  scale: 3.5, color: Theme.of(context).colorScheme.secondary),
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
                    scale: 3.5,
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
                    scale: 3.2,
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
          return state.pages[state.tabIndex];
        },
      ),
    );
  }
}
