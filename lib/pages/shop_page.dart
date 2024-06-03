import 'package:coffee_app/bloc/shop_bloc.dart';
import 'package:coffee_app/components/coffee_tile.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/models/shop_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Shop",
              style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold )),
          const SizedBox(
            height: 25,
          ),
          Expanded(
              child: BlocBuilder<ShopBloc, ShopList>(
                builder: (context, state) =>  ListView.builder(
                    itemCount: state.getShopList.length,
                    itemBuilder: (context, index) {
                      Coffee coffee = state.getShopList[index];
                
                      return CoffeeTile(
                        coffee: coffee,
                        onPressed: (){},);
                    })
              ))
        ],
      ),
    ));
  }
}
