import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifoodfake/componentes/historico.dart';
import 'package:ifoodfake/componentes/style.dart';

import '../componentes/pedir_denovo.dart';

class Pedidos extends StatelessWidget {
  const Pedidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meus Pedidos',
          style: txtNunitoBold(17),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          pedidosRecente('3', 'Restaurant Obrian', 'Pizza grande',
              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Pizza_Hut_classic_logo.svg/1200px-Pizza_Hut_classic_logo.svg.png'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(4)),
              alignment: Alignment.center,
              height: 40,
              width: 100,
              child: const Row(
                children: [Text('Você ganhou 20 reais em cupons!')],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Histórico',
                      style: txtNunitoBold(32),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            'Sabado, 14 de março',
            style: txtNunito300(15),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: historico(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Pizza_Hut_classic_logo.svg/1200px-Pizza_Hut_classic_logo.svg.png',
                'Pizzaria',
                '6565',
                '2',
                'Pizzas Salgadas'),
          ),
          Text(
            'Sabado, 14 de março',
            style: txtNunito300(15),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: historico(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Pizza_Hut_classic_logo.svg/1200px-Pizza_Hut_classic_logo.svg.png',
                'Pizzaria',
                '6565',
                '2',
                'Pizzas Salgadas'),
          ),
          Text(
            'Sabado, 14 de março',
            style: txtNunito300(15),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: historico(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Pizza_Hut_classic_logo.svg/1200px-Pizza_Hut_classic_logo.svg.png',
                'Pizzaria',
                '6565',
                '2',
                'Pizzas Salgadas'),
          ),
          Text(
            'Sabado, 14 de março',
            style: txtNunito300(15),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: historico(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Pizza_Hut_classic_logo.svg/1200px-Pizza_Hut_classic_logo.svg.png',
                'Pizzaria',
                '6565',
                '2',
                'Pizzas Salgadas'),
          ),
          Text(
            'Sabado, 14 de março',
            style: txtNunito300(15),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: historico(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Pizza_Hut_classic_logo.svg/1200px-Pizza_Hut_classic_logo.svg.png',
                'Pizzaria',
                '6565',
                '2',
                'Pizzas Salgadas'),
          ),
          Text(
            'Sabado, 14 de março',
            style: txtNunito300(15),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: historico(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Pizza_Hut_classic_logo.svg/1200px-Pizza_Hut_classic_logo.svg.png',
                'Pizzaria',
                '6565',
                '2',
                'Pizzas Salgadas'),
          ),
          Text(
            'Sabado, 14 de março',
            style: txtNunito300(15),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: historico(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Pizza_Hut_classic_logo.svg/1200px-Pizza_Hut_classic_logo.svg.png',
                'Pizzaria',
                '6565',
                '2',
                'Pizzas Salgadas'),
          ),
          Text(
            'Sabado, 14 de março',
            style: txtNunito300(15),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: historico(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Pizza_Hut_classic_logo.svg/1200px-Pizza_Hut_classic_logo.svg.png',
                'Pizzaria',
                '6565',
                '2',
                'Pizzas Salgadas'),
          )
        ],
      ),
    );
  }
}
