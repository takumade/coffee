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
    return const Placeholder();
  }
}