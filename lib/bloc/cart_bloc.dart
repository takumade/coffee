


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

class Cart {
  List<Coffee> _cart = [];

  List<Coffee> get userCart => _cart; 
}



