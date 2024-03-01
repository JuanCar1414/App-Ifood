import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifoodfake/componentes/bottom_nav.dart';
import 'package:ifoodfake/screens/busca.dart';
import 'package:ifoodfake/screens/home_page.dart';
import 'package:ifoodfake/screens/pedidos.dart';
import 'package:ifoodfake/screens/perfil.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});
  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int selectedIndex = 0;
  List<Widget> pages = const [
    HomePage(),
    TelaDeBusca(),
    Pedidos(),
    Perfil(),
  ];

  nextPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: nextPage,
        currentIndex: selectedIndex,
        items: [
          bottomNavigationBarItem(
            Icons.home,
            'Home',
          ),
          bottomNavigationBarItem(Icons.search, 'Pesquise'),
          bottomNavigationBarItem(Icons.shopping_bag, 'Compras'),
          bottomNavigationBarItem(Icons.person_3, 'Usuario'),
        ],
      ),
    );
  }
}
