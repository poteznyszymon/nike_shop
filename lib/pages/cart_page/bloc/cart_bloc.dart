import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nike_shop/componets/toast.dart';
import '../../../models/shoe_model.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial(cart: [])) {
    on<ShoeAdd>((event, emit) {
      final _cart = state.cart;
      _cart.add(event.shoe);
      emit(CartInitial(cart: _cart));
      toastInfo(message: 'Added to cart');
      print(state.cart.length);
    });
    on<ShoeRemove>((event, emit) {});
  }
}
