import 'package:coffee_app/bloc/cart_bloc.dart';
import 'package:coffee_app/bloc/shop_bloc.dart';
import 'package:coffee_app/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<CartBloc>(create: (BuildContext context) => CartBloc()),
      BlocProvider<ShopBloc>(create: (BuildContext context) => ShopBloc())
    ], child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    ));
  }
}