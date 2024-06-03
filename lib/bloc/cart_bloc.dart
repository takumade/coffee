


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

class CartBloc extends Bloc<CartEvent, List<Coffee>> {

  CartBloc(): super([]) {
    on<AddToCart>((event, emit) {

      state.add(event.coffee);
      emit(state);
    });

    on<RemoveFromCart>((event, emit){
      state.remove(event.coffee);

      emit(state);
    });
  }
}



