import 'package:coffee_app/bloc/shop_bloc.dart';
import 'package:coffee_app/models/shop_list.dart';
import 'package:coffee_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: BlocListener<ShopBloc, ShopList>(
        listener: (context, state) {
          Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    "lib/images/beans.png",
                    height: 240,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Brew Day",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,  color: Colors.brown)),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "How do you like your coffee?",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 48,
                ),
                GestureDetector(
                  onTap: (){
                    context.read<ShopBloc>().add(
                      AppStarted()
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(25),
                    child: const Center(
                      child: Text("Enter Shop",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
