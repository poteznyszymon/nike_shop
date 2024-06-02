part of 'cart_bloc.dart';

@immutable
sealed class CartState {
  final List<Shoe> cart;

  const CartState({required this.cart});
}

final class CartInitial extends CartState {
  const CartInitial({required super.cart});
}
