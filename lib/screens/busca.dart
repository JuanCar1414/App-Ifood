import 'package:flutter/material.dart';
import 'package:ifoodfake/componentes/card.dart';
import 'package:ifoodfake/componentes/style.dart';

class TelaDeBusca extends StatelessWidget {
  const TelaDeBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          label: const Text('Buscar no iaFood'),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.red,
          ),
          filled: true,
          fillColor: Colors.grey[50],
          contentPadding: const EdgeInsets.all(4),
        ),
      )),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categorias', style: txtNunitoBold(16)),
          ),
          Wrap(
            children: [
              card(Colors.green, 'Mercado', 'lib/assets/mercado.png', 175, 100),
              card(
                  Colors.pink, 'Farmácia', 'lib/assets/farmacia.png', 175, 100),
              card(Colors.grey, 'Bebidas', 'lib/assets/bebidas.png', 175, 100),
              card(Colors.blue, 'Pets', 'lib/assets/pet.png', 175, 100),
              card(Colors.purple, 'Espetinho', 'lib/assets/carnes.png', 175,
                  100),
              card(Colors.red, 'Marmita', 'lib/assets/marmita.png', 175, 100),
              card(Colors.yellow, 'Peixe', 'lib/assets/peixes.png', 175, 100),
              card(Colors.purpleAccent, 'Sorvete', 'lib/assets/sorvete.png',
                  175, 100),
              card(Colors.deepPurple, 'Tapioca', 'lib/assets/tapioca.png', 175,
                  100),
              card(
                  Colors.pinkAccent, 'Pizza', 'lib/assets/pizza.png', 175, 100),
              card(
                  Colors.deepOrange, 'Sopas', 'lib/assets/sopas.png', 175, 100),
              card(Colors.black, 'Sucos', 'lib/assets/sucos.png', 175, 100),
              card(Colors.yellow, 'Hot Dog', 'lib/assets/hotDog.png', 175, 100),
              card(Colors.redAccent, 'Bolos', 'lib/assets/bolo.png', 175, 100),
              card(
                  Colors.orange, 'Lanches', 'lib/assets/lanches.png', 175, 100),
            ],
          )
        ],
      ),
    );
  }
}
