

import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/pages/coffee_detail_page.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
  CoffeeTile({super.key, required this.coffee, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => CoffeeDetailPage(coffee: coffee))
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
        child: ListTile(
          title: Text(coffee.name,   style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("\$ ${coffee.price}"),
          leading: Image.asset(coffee.imagePath),
          trailing: IconButton(icon: Icon(Icons.add), onPressed: onPressed,),
        ),
      ),
    );
  }
}