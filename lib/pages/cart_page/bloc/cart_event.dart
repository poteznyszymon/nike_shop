part of 'cart_bloc.dart';

@immutable
sealed class CartEvent {}

class ShoeAdd extends CartEvent {
  final Shoe shoe;

  ShoeAdd({required this.shoe});
}

class ShoeRemove extends CartEvent {
  final Shoe shoe;

  ShoeRemove({required this.shoe});
}
