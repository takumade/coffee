import 'package:coffee_app/const.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:choice/choice.dart';

class CoffeeDetailPage extends StatefulWidget {
  final Coffee coffee;
  CoffeeDetailPage({super.key, required this.coffee});

  @override
  State<CoffeeDetailPage> createState() => _CoffeeDetailPageState();
}

class _CoffeeDetailPageState extends State<CoffeeDetailPage> {
  List<String> choices = ['S', 'M', 'L'];

  String? selectedValue;

  void setSelectedValue(String? value) {
    setState(() => selectedValue = value);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(widget.coffee.imagePath),
                    const Text(
                      "Q U A N T I T Y",
                      style: TextStyle(fontSize: 20, color: Colors.brown),
                    ),
                     SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.remove)),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6)),
                            child: const Text(
                              "3",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            )),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.add))
                      ],
                    ),
                    SizedBox(height: 30),
                    const Text(
                      "S I Z E",
                      style: TextStyle(fontSize: 20, color: Colors.brown),
                    ),
                    Container(
                      child: Choice<String>.inline(
                        clearable: true,
                        value: ChoiceSingle.value(selectedValue),
                        onChanged: ChoiceSingle.onChanged(setSelectedValue),
                        itemCount: choices.length,
                        itemBuilder: (state, i) {
                          return ChoiceChip(
                            iconTheme: IconThemeData(
                              size: 0,color:Colors.transparent
                            ),
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
                                  side: BorderSide(
                                      color: Colors.black.withOpacity(0.0))));
                        },
                        listBuilder: ChoiceList.createScrollable(
                          spacing: 10,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(25),
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(color: Colors.white),
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
    ));
  }
}
