

import 'package:coffee_app/models/coffee.dart';

class ShopRepository {
  Future<List<Coffee>> getShopItems() async {
    return [

    Coffee(
      name: "Long Black", 
      price: "4.10", 
      imagePath: "lib/images/black.png"
    ),

    Coffee(
      name: "Latte", 
      price: "4.20", 
      imagePath: "lib/images/latte.png"
    ),

    Coffee(
      name: "Espresso", 
      price: "3.50", 
      imagePath: "lib/images/espresso.png"
    ),

    Coffee(
      name: "Iced Coffee", 
      price: "4.40", 
      imagePath: "lib/images/iced_coffee.png"
    )
  ];
  }
}