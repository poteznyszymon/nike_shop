import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_shop/intro_pages/intro_page_one.dart';
import 'package:nike_shop/intro_pages/intro_page_three.dart';
import 'package:nike_shop/intro_pages/intro_page_two.dart';
import 'package:nike_shop/navigation/navigation_page.dart';
import 'package:nike_shop/pages/cart_page/bloc/cart_bloc.dart';
import 'package:nike_shop/pages/shop_page/bloc/category_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../navigation/bloc/page_navigation_bloc.dart';
import 'components/custom_button.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _controller = PageController();
  bool onFirstPage = true;
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (value) {
              setState(() {
                onFirstPage = (value == 0);
                onLastPage = (value == 2);
              });
            },
            controller: _controller,
            children: const [
              IntroPageOne(),
              IntroPageTwo(),
              IntroPageThree(),
            ],
          ),
          Align(
            alignment: const Alignment(0, 0.9),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                text: onFirstPage ? 'Get Started' : 'Next',
                ontap: () {
                  onLastPage
                      ? Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MultiBlocProvider(
                              providers: [
                                BlocProvider(
                                  create: (context) => PageNavigationBloc(),
                                ),
                                BlocProvider(
                                  create: (context) => CategoryBloc(),
                                ),
                                BlocProvider(
                                  create: (context) => CartBloc(),
                                )
                              ],
                              child: const NavigationPage(),
                            ),
                          ),
                          (route) => false)
                      : _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.6),
            child: SmoothPageIndicator(
              effect: ExpandingDotsEffect(
                dotHeight: 8,
                dotColor: Theme.of(context).colorScheme.onPrimary,
                activeDotColor: Theme.of(context).colorScheme.inversePrimary,
              ),
              controller: _controller,
              count: 3,
            ),
          )
        ],
      ),
    );
  }
}
