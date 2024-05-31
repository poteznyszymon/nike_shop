import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nike_shop/models/categories.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const CategoryInitial(category: Categories.all)) {
    on<CategoryChange>((event, emit) {
      emit(CategoryInitial(category: event.category));
    });
  }
}
