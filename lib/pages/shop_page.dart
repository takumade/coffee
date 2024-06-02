import 'package:coffee_app/components/coffee_tile.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Text("How would you like your coffee?",
              style: TextStyle(fontSize: 20)),
          SizedBox(
            height: 25,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    Coffee coffee = Coffee(
                        name: "Espresso",
                        price: "3.50",
                        imagePath: "lib/images/espresso.png");

                    return CoffeeTile(
                      coffee: coffee,
                      onPressed: (){},);
                  }))
        ],
      ),
    ));
  }
}
