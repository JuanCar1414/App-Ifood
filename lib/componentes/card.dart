import 'package:flutter/material.dart';
import 'package:ifoodfake/componentes/style.dart';

Widget card(Color cor, String txt, String src, double largura, double altura) {
  return Container(
    width: largura,
    height: altura,
    margin: const EdgeInsets.all(8),
    child: Card(
      color: cor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            txt,
            style: txtNunitoBoldWhite(16),
          ),
          Image.asset(src)
        ],
      ),
    ),
  );
}

Widget cardBlack(Color cor, String txt, String src, double largura, double altura) {
  return Container(
    width: largura,
    height: altura,
    margin: const EdgeInsets.all(8),
    child: Card(
      color: cor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            txt,
            style: txtNunitoBold(16),
          ),
          Image.asset(src)
        ],
      ),
    ),
  );
}

Widget cardColunm(Color cor, String txt, String src, double largura, double altura) {
  return Container(
    width: largura,
    height: altura,
    margin: const EdgeInsets.all(8),
    child: Card(
      color: cor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            txt,
            style: txtNunitoBold(16),
          ),
          Image.asset(src)
        ],
      ),
    ),
  );
}


