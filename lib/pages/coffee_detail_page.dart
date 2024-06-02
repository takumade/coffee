import 'package:coffee_app/const.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeDetailPage extends StatefulWidget {
  final Coffee coffee;
  CoffeeDetailPage({super.key, required this.coffee});

  @override
  State<CoffeeDetailPage> createState() => _CoffeeDetailPageState();
}

class _CoffeeDetailPageState extends State<CoffeeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Image.asset(widget.coffee.imagePath),
          Text("Q U A N T I T Y", style: TextStyle(fontSize: 20),),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
              IconButton(onPressed: (){}, icon: Icon(Icons.add))
            ],
          )
        ],
      ),

    );
  }
}