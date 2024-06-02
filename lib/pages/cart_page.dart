import 'package:coffee_app/components/cart_tile.dart';
import 'package:coffee_app/models/coffee.dart';
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
        child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("You Cart",
              style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold )),
          SizedBox(
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
                      padding: EdgeInsets.all(25),
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Pay Now",
                          style: TextStyle(
                            color: Colors.white
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
    ));
  }
}