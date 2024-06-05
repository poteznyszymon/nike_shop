part of 'page_navigation_bloc.dart';

@immutable
sealed class PageNavigationState {
  final List<Widget> pages = [
    const HomePage(),
    const CartPage(),
    const AllShoesPage(),
  ];
  final int tabIndex;

  PageNavigationState({required this.tabIndex});
}

final class PageNavigationInitial extends PageNavigationState {
  PageNavigationInitial({required super.tabIndex});
}
