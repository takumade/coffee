import 'package:coffee_app/bloc/cart_bloc.dart';
import 'package:coffee_app/const.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:choice/choice.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoffeeDetailPage extends StatefulWidget {
  final Coffee coffee;
  CoffeeDetailPage({super.key, required this.coffee});

  @override
  State<CoffeeDetailPage> createState() => _CoffeeDetailPageState();
}

class _CoffeeDetailPageState extends State<CoffeeDetailPage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: backgroundColor,
      body: BlocListener<CartBloc, CartList>(
        listener: (context, state) {
    // if (state.contains(widget.coffee)) {
     
    // }

    print("hello world");

     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('${widget.coffee.name} added to cart!'),
      ));
  },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Image.asset(
                            widget.coffee.imagePath,
                            width: 300,
                            height: 250,
                          )),
                      const Text(
                        "Q U A N T I T Y",
                        style: TextStyle(fontSize: 20, color: Colors.brown),
                      ),
                      SizedBox(height: 10),
                      Amount(),
                      SizedBox(height: 30),
                      const Text(
                        "S I Z E",
                        style: TextStyle(fontSize: 20, color: Colors.brown),
                      ),
                      CupSize()
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context
                      .read<CartBloc>()
                      .add(AddToCart(coffee: widget.coffee));
                },
                child: Container(
                  padding: EdgeInsets.all(25),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Add To Cart",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12)),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class Amount extends StatefulWidget {
  const Amount({
    super.key,
  });

  @override
  State<Amount> createState() => _AmountState();
}

class _AmountState extends State<Amount> {
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {
              setState(() {
                if (_count != 1) _count--;
              });
            },
            icon: const Icon(Icons.remove)),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)),
            child: Text(
              _count.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            )),
        IconButton(
            onPressed: () {
              setState(() {
                _count++;
              });
            },
            icon: const Icon(Icons.add))
      ],
    );
  }
}

class CupSize extends StatefulWidget {
  const CupSize({super.key});

  @override
  State<CupSize> createState() => _CupSizeState();
}

class _CupSizeState extends State<CupSize> {
  List<String> choices = ['S', 'M', 'L'];

  String? selectedValue;

  void setSelectedValue(String? value) {
    setState(() => selectedValue = value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Choice<String>.inline(
        clearable: true,
        value: ChoiceSingle.value(selectedValue),
        onChanged: ChoiceSingle.onChanged(setSelectedValue),
        itemCount: choices.length,
        itemBuilder: (state, i) {
          return ChoiceChip(
              iconTheme: IconThemeData(size: 0, color: Colors.transparent),
              selected: state.selected(choices[i]),
              onSelected: state.onSelected(choices[i]),
              label: Text(
                choices[i],
                style: TextStyle(
                    color: selectedValue == choices[i]
                        ? Colors.white
                        : Colors.black),
              ),
              selectedColor: Colors.brown,
              backgroundColor: Colors.white54,
              shape: StadiumBorder(
                  side: BorderSide(color: Colors.black.withOpacity(0.0))));
        },
        listBuilder: ChoiceList.createScrollable(
          spacing: 10,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
        ),
      ),
    );
  }
}
