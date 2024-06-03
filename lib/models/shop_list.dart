import 'package:coffee_app/models/coffee.dart';

class ShopList {
  List<Coffee> products;

  ShopList({required this.products});

  List<Coffee> get getShopList => products;



  ShopList copyWith(List<Coffee> newProducts){
    products = newProducts;
    return ShopList(products: newProducts);
  }

  
}