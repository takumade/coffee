import 'package:coffee_app/models/coffee.dart';

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