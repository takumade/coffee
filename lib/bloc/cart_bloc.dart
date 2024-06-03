


import 'package:bloc/bloc.dart';
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


class CartList {
  List<Coffee> cart;

  CartList({required this.cart});

  List<Coffee> get userCart => cart;
  
  set cartList (List<Coffee> list){
    cart = list;
  }

  List<Coffee> addItem(Coffee item){
    cart.add(item);
    return cart;
  }

  List<Coffee> removeItem(Coffee item){
    cart.remove(item);
    return cart;
  }

  CartList copyWith(List<Coffee> newCart){
    return CartList(cart: newCart);
  }

  
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

}



