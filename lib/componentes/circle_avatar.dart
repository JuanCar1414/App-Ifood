import 'package:flutter/material.dart';

Container circleAvatar(String src, double largura, double altura) {
  return Container(
    width: largura,
    height: altura,
    margin: const EdgeInsets.all(8),
    child: CircleAvatar(radius: 50, backgroundImage: NetworkImage(src)),
  );
}
