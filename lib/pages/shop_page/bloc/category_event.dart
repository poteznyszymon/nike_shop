part of 'category_bloc.dart';

@immutable
sealed class CategoryEvent {}

class CategoryChange extends CategoryEvent {
  final Categories category;

  CategoryChange({required this.category});
}
