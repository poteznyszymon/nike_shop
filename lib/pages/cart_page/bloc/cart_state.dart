part of 'cart_bloc.dart';

@immutable
sealed class CartState {
  List<Shoe> cart;

  CartState({required this.cart});
}

final class CartInitial extends CartState {
  CartInitial({required super.cart});
}
