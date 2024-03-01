import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifoodfake/componentes/card.dart';
import 'package:ifoodfake/componentes/circle_avatar.dart';
import 'package:ifoodfake/componentes/restaurante.dart';
import 'package:ifoodfake/componentes/slide.dart';
import 'package:ifoodfake/componentes/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Rua Endereço Fulano',
          style: txtNunitoBoldRed(17),
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.red,
          )
        ],
      ),
      body: ListView(children: [
        Wrap(children: [
          const Padding(padding: EdgeInsets.all(5)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              cardBlack(
                  Colors.white70, 'Mercado', 'lib/assets/carnes.png', 175, 100),
              cardBlack(
                  Colors.white70, 'Pizza', 'lib/assets/pizza.png', 175, 100),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              cardColunm(Colors.white70, 'Mercado', 'lib/assets/farmacia.png',
                  80, 110),
              cardColunm(
                  Colors.white70, 'Petshop', 'lib/assets/pet.png', 80, 110),
              cardColunm(
                  Colors.white70, 'Bebidas', 'lib/assets/bebidas.png', 80, 110),
              cardColunm(
                  Colors.white70, 'Tapioca', 'lib/assets/tapioca.png', 80, 110),
            ],
          )
        ]),
        const Slide(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Entrega Gratis',
                    style: txtNunitoBold(16),
                  ),
                  Text(
                    'Confira lojas com frete gratis',
                    style: txtNunito300(10),
                  )
                ],
              ),
              Text(
                'Ver mais',
                style: txtNunitoBoldRed(15),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(children: [
                  circleAvatar(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/1200px-McDonald%27s_Golden_Arches.svg.png',
                      65,
                      65),
                  const Text(
                    'Mcdonalds',
                  )
                ]),
                Column(children: [
                  circleAvatar(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/1200px-McDonald%27s_Golden_Arches.svg.png',
                      65,
                      65),
                  const Text(
                    'Mcdonalds',
                  )
                ]),
                Column(children: [
                  circleAvatar(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/1200px-McDonald%27s_Golden_Arches.svg.png',
                      65,
                      65),
                  const Text(
                    'Mcdonalds',
                  )
                ]),
                Column(children: [
                  circleAvatar(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/1200px-McDonald%27s_Golden_Arches.svg.png',
                      65,
                      65),
                  const Text(
                    'Mcdonalds',
                  )
                ]),
                Column(children: [
                  circleAvatar(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/1200px-McDonald%27s_Golden_Arches.svg.png',
                      65,
                      65),
                  const Text(
                    'Mcdonalds',
                  )
                ]),
                Column(children: [
                  circleAvatar(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/1200px-McDonald%27s_Golden_Arches.svg.png',
                      65,
                      65),
                  const Text(
                    'Mcdonalds',
                  )
                ]),
                Column(children: [
                  circleAvatar(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/1200px-McDonald%27s_Golden_Arches.svg.png',
                      65,
                      65),
                  const Text(
                    'Mcdonalds',
                  )
                ]),
                Column(children: [
                  circleAvatar(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/1200px-McDonald%27s_Golden_Arches.svg.png',
                      65,
                      65),
                  const Text(
                    'Mcdonalds',
                  )
                ]),
              ],
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
                    'Clube Ifake',
                    style: txtNunitoBold(16),
                  ),
                  Text(
                    'Experiencias únicas',
                    style: txtNunito300(10),
                  )
                ],
              ),
              Text(
                'Ver mais',
                style: txtNunitoBoldRed(15),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              cardColunm(const Color.fromARGB(200, 255, 255, 255), 'Descontos de até 10 reias',
                  'lib/assets/marmita.png', 150, 200),
              cardColunm(const Color.fromARGB(200, 255, 255, 255), 'Compra quando quiser',
                  'lib/assets/hotDog.png', 150, 200),
              cardColunm(const Color.fromARGB(200, 255, 255, 255), 'Lanche perfeita',
                  'lib/assets/cafe.png', 150, 200),
              cardColunm(const Color.fromARGB(200, 255, 255, 255), 'Entre para o clube',
                  'lib/assets/sopas.png', 150, 200),
            ],
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
                    'Mercados próximos',
                    style: txtNunitoBold(16),
                  ),
                ],
              ),
              Text(
                'Ver mais',
                style: txtNunitoBoldRed(15),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 125,
          width: double.infinity,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Column(
              children: [
                restaurantes('Mini Mecado', 'A partir de 33min', Colors.white,
                    'lib/assets/marmita.png', 50, 250),
                const SizedBox(
                  height: 10,
                ),
                restaurantes('Padaria Sid', 'A partir de 20min', Colors.white,
                    'lib/assets/sopas.png', 50, 250),
              ],
            ),
            Column(
              children: [
                restaurantes('Resturante Zé Snyder', 'A partir de 56min',
                    Colors.white, 'lib/assets/carnes.png', 50, 300),
                const SizedBox(
                  height: 10,
                ),
                restaurantes('Resturante Gomes', 'A partir de 43min',
                    Colors.white, 'lib/assets/pizza.png', 50, 300),
              ],
            ),
            Column(
              children: [
                restaurantes('Atacadão Osasco', 'A partir de 15min',
                    Colors.white, 'lib/assets/sucos.png', 50, 250),
                const SizedBox(
                  height: 10,
                ),
                restaurantes('Sorveteria', 'A partir de 46min', Colors.white,
                    'lib/assets/tapioca.png', 50, 250),
              ],
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Compras Recentes',
                    style: txtNunitoBold(16),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(children: [
                  circleAvatar(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/1200px-McDonald%27s_Golden_Arches.svg.png',
                      65,
                      65),
                  const Text(
                    'Mcdonalds',
                  )
                ]),
                Column(children: [
                  circleAvatar(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/1200px-McDonald%27s_Golden_Arches.svg.png',
                      65,
                      65),
                  const Text(
                    'Mcdonalds',
                  )
                ]),
              ],
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
                    'Cupom de até 40 Reais',
                    style: txtNunitoBold(16),
                  ),
                ],
              ),
              Text(
                'Ver mais',
                style: txtNunitoBoldRed(15),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 125,
          width: double.infinity,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Column(
              children: [
                restaurantes('Restaurante Chan', 'A partir de 1hr',
                    Colors.white, 'lib/assets/marmita.png', 50, 250),
                const SizedBox(
                  height: 10,
                ),
                restaurantes('Padaria do mcAdams', 'A partir de 24min',
                    Colors.white, 'lib/assets/sopas.png', 50, 300),
              ],
            ),
            Column(
              children: [
                restaurantes('Resturante P. Hiton', 'A partir de 56min',
                    Colors.white, 'lib/assets/carnes.png', 50, 300),
                const SizedBox(
                  height: 10,
                ),
                restaurantes('Resturante Gosling', 'A partir de 43min',
                    Colors.white, 'lib/assets/pizza.png', 50, 300),
              ],
            ),
            Column(
              children: [
                restaurantes('Padaria Viola D.', 'A partir de 15min',
                    Colors.white, 'lib/assets/peixes.png', 50, 250),
                const SizedBox(
                  height: 10,
                ),
                restaurantes('Sorveteria Berry', 'A partir de 46min',
                    Colors.white, 'lib/assets/sorvete.png', 50, 250),
              ],
            ),
            Column(
              children: [
                restaurantes('Restaurante diCaprio', 'A partir de 15min',
                    Colors.white, 'lib/assets/sucos.png', 50, 300),
                const SizedBox(
                  height: 10,
                ),
                restaurantes('Açogue Farrell', 'A partir de 46min',
                    Colors.white, 'lib/assets/carnes.png', 50, 250),
              ],
            ),
            Column(
              children: [
                restaurantes('Mercado OLsen', 'A partir de 15min', Colors.white,
                    'lib/assets/sucos.png', 50, 250),
                const SizedBox(
                  height: 10,
                ),
                restaurantes('Padaria Maryl', 'A partir de 46min', Colors.white,
                    'lib/assets/cafe.png', 50, 250),
              ],
            ),
          ]),
        ),
      ]),
    );
  }
}
