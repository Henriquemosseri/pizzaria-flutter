import 'package:flutter/material.dart';
import 'package:pizzaria/menu_item.dart';
import 'package:pizzaria/pizza_data.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza Menu"),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children:
                    pizzaData.map((pizza) => MenuItem(pizza: pizza)).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed: (){},
              child: Text("order now!"),
            ),
          )
        ],
      ),
    );
  }
}

List<MenuItem> _buildPizzas() {
  List<MenuItem> lista = [];
  for (var pizza in pizzaData) {
    lista.add(MenuItem(pizza: pizza));
  }
  return lista;
}
