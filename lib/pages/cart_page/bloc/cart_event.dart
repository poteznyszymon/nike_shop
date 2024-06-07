part of 'cart_bloc.dart';

@immutable
sealed class CartEvent {}

class ShoeAdd extends CartEvent {
  final Shoe shoe;

  ShoeAdd({required this.shoe});
}

class ShoeRemove extends CartEvent {
  final int index;

  ShoeRemove({required this.index});
}
