import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifoodfake/componentes/circle_avatar.dart';
import 'package:ifoodfake/componentes/style.dart';

Widget historico(String src, String rst, String nmr, String vlr, String pdd) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(200, 255, 255, 255),
            borderRadius: BorderRadius.circular(8)),
        alignment: Alignment.center,
        width: 70,
        height: 200,
        margin: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                circleAvatar(src, 50, 50),
                Text(
                  rst,
                  style: txtNunito300(16),
                ),
                const Icon(Icons.arrow_right),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.circle),
                Text(
                  'Pedido concluído - N°$nmr',
                  style: txtNunito300(14),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Container(
                  height: 15,
                  width: 15,
                  child: Text(
                    vlr,
                    style: txtNunito300(14),
                  ),
                ),
                Text(
                  pdd,
                  style: txtNunito300(14),
                ),
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40),
              width: double.infinity,
              child: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 100,
                          color: Colors.red,
                          child: Text(
                            'Ajuda',
                            style: txtNunitoBoldWhite(10),
                          )),
                      Container(
                        height: 30,
                        width: 90,
                      ),
                      Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 100,
                          color: Colors.red,
                          child: Text(
                            'Adicionar à sacola',
                            style: txtNunitoBoldWhite(10),
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        )),
  );
}
