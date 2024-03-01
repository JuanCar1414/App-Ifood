import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifoodfake/componentes/circle_avatar.dart';
import 'package:ifoodfake/componentes/style.dart';

Widget restaurantes(String txt, String sbutxt, Color color, String img, double altura, double largura) {
  return Container(
    height: altura,
    width: largura,
    color: color,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        circleAvatar(img, 60, 60),
        Row(
          children: [
            Column(
              children: [
                Text(
                  txt,
                  style: txtNunitoBold(20),
                ),
                Text(
                  sbutxt,
                  style: txtNunito300(15),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}
