import 'package:flutter/material.dart';
import 'package:ifoodfake/componentes/style.dart';

Padding listTile(IconData icon, String src, String subSrc) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
      leading: Icon(icon),
      title: Text(src, style: txtNunitoBold(16)),
      subtitle: Text(subSrc, style: txtNunito300(16)),
      trailing: const Icon(Icons.arrow_right),
      onTap: () {},
    ),
  );
}
