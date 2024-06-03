import 'package:coffee_app/bloc/cart_bloc.dart';
import 'package:coffee_app/pages/into_page.dart';
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
      BlocProvider<CartBloc>(create: (BuildContext context) => CartBloc())
    ], child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    ));
  }
}