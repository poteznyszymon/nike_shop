import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:nike_shop/pages/all_shoes_page.dart';

import '../../pages/cart_page/cart_page.dart';
import '../../pages/shop_page/shop_page.dart';
part 'page_navigation_event.dart';
part 'page_navigation_state.dart';

class PageNavigationBloc
    extends Bloc<PageNavigationEvent, PageNavigationState> {
  PageNavigationBloc() : super(PageNavigationInitial(tabIndex: 0)) {
    on<TabChange>((event, emit) {
      emit(
        PageNavigationInitial(tabIndex: event.tabIndex),
      );
    });
  }
}
