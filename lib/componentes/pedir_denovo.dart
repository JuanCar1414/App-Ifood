import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifoodfake/componentes/circle_avatar.dart';
import 'package:ifoodfake/componentes/style.dart';

Widget pedidosRecente(String vlr, String txt, String subTxt, String src) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color.fromARGB(200, 255, 255, 255)),
      height: 175,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Peça de novo',
                style: txtNunitoBold(16),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                txt,
                style: txtNunitoBold(18),
              ),
              circleAvatar(src, 50, 50)
            ],
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 10, bottom: 10),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  child: Text(
                    vlr,
                    style: txtNunito300(16),
                  ),
                ),
                Text(subTxt)
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.red,
            ),
            child: Text(
              'Adicioanr a sacola',
              style: txtNunito300(16),
            ),
          )
        ],
      ),
    ),
  );
}
