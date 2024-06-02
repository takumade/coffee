import 'package:coffee_app/components/cart_tile.dart';
import 'package:coffee_app/const.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/navigators/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Your Cart",
                  style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold )),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        Coffee coffee = Coffee(
                            name: "Espresso",
                            price: "3.50",
                            imagePath: "lib/images/espresso.png");
                    
                        return CartTile(
                          coffee: coffee,
                          onPressed: (){},);
                      })),
                    
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: const EdgeInsets.all(25),
                          width: double.infinity,
                          child: const Center(
                            child: Text(
                              "Pay Now",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(12)
                          ),
                        ),
                      )
            ],
                    ),
          ),
        drawer: const AppDrawer(),
        ));
  }
}