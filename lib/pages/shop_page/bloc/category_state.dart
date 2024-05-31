part of 'category_bloc.dart';

@immutable
sealed class CategoryState {
  final Categories category;

  const CategoryState({required this.category});
}

final class CategoryInitial extends CategoryState {
  const CategoryInitial({required super.category});
}
