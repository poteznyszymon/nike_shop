import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'page_navigation_event.dart';
part 'page_navigation_state.dart';

class PageNavigationBloc
    extends Bloc<PageNavigationEvent, PageNavigationState> {
  PageNavigationBloc() : super(const PageNavigationInitial(tabIndex: 0)) {
    on<TabChange>((event, emit) {
      emit(
        PageNavigationInitial(tabIndex: event.tabIndex),
      );
    });
  }
}
