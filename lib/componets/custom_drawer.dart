import 'package:flutter/material.dart';

import 'custom_drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                decoration: UnderlineTabIndicator(
                    borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.inversePrimary,
                )),
                child: Image.asset(
                  'assets/nike.png',
                  fit: BoxFit.contain,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: CustomDrawerTile(
                  text: 'Home',
                  image: Image.asset(
                    'assets/home_icon.png',
                    scale: 3.5,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  ontap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: CustomDrawerTile(
                  text: 'About',
                  image: Image.asset(
                    'assets/bag.png',
                    scale: 3.5,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  ontap: () {},
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 25, right: 25),
            child: CustomDrawerTile(
              text: 'Logout',
              image: Image.asset(
                'assets/logout_icon.png',
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              ontap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
