part of 'page_navigation_bloc.dart';

@immutable
sealed class PageNavigationState {
  final int tabIndex;

  const PageNavigationState({required this.tabIndex});
}

final class PageNavigationInitial extends PageNavigationState {
  const PageNavigationInitial({required super.tabIndex});
}
