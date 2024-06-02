import 'package:coffee_app/components/coffee_tile.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/models/coffee_shop.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  final coffeeShop = CoffeeShop();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Shop",
              style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold )),
          const SizedBox(
            height: 25,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: coffeeShop.coffeeShop.length,
                  itemBuilder: (context, index) {
                    Coffee coffee = coffeeShop.coffeeShop[index];

                    return CoffeeTile(
                      coffee: coffee,
                      onPressed: (){},);
                  }))
        ],
      ),
    ));
  }
}
