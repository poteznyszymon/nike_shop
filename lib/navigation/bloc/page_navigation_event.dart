part of 'page_navigation_bloc.dart';

@immutable
sealed class PageNavigationEvent {}

class TabChange extends PageNavigationEvent {
  final int tabIndex;

  TabChange({required this.tabIndex});
}
