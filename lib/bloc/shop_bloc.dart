


import 'package:bloc/bloc.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/repository/shop_repository.dart';

sealed class ShopEvent {
  ShopEvent();
}


final class AppStarted extends ShopEvent {
  AppStarted();
}

class ShopList {
  List<Coffee> products;

  ShopList({required this.products});

  List<Coffee> get getShopList => products;



  ShopList copyWith(List<Coffee> newProducts){
    products = newProducts;
    return ShopList(products: newProducts);
  }

  
}

class ShopBloc extends Bloc<ShopEvent, ShopList> {

  ShopBloc(): super(ShopList(products: [])) {
    on<AppStarted>((event, emit) async {
      var res = await ShopRepository().getShopItems();
     

     
      emit(state.copyWith(res));
    });

  }

  @override
  void onChange(Change<ShopList> change) {
    // TODO: implement onChange

    // ignore: avoid_print
    print(change);
    super.onChange(change);
  }

}



