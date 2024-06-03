


import 'package:bloc/bloc.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/models/shop_list.dart';
import 'package:coffee_app/repository/shop_repository.dart';

sealed class ShopEvent {
  ShopEvent();
}


final class AppStarted extends ShopEvent {
  AppStarted();
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



