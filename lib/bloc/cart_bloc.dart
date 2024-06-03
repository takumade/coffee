


import 'package:bloc/bloc.dart';
import 'package:coffee_app/models/cart_list.dart';
import 'package:coffee_app/models/coffee.dart';

sealed class CartEvent {
  final Coffee coffee;

  CartEvent({required this.coffee});
}


final class AddToCart extends CartEvent {
  AddToCart({required super.coffee});
}

final class RemoveFromCart extends CartEvent {
  RemoveFromCart({required super.coffee});
}




class CartBloc extends Bloc<CartEvent, CartList> {

  CartBloc(): super(CartList(cart: [])) {
    on<AddToCart>((event, emit) {
      var res = state;
      res.addItem(event.coffee);
      emit(state.copyWith(res.userCart));
    });

    on<RemoveFromCart>((event, emit){
      var res = state;
      res.removeItem(event.coffee);
      emit(state.copyWith(res.userCart));
    });
  }

  @override
  void onChange(Change<CartList> change) {
    // ignore: avoid_print
    print(change);
    super.onChange(change);
  }

}



