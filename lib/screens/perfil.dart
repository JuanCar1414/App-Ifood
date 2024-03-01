import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifoodfake/componentes/circle_avatar.dart';
import 'package:ifoodfake/componentes/listTile.dart';
import 'package:ifoodfake/componentes/style.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const [
        Icon(Icons.qr_code),
      ]),
      body: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              circleAvatar(
                  'https://dcdn.mitiendanube.com/stores/002/302/511/products/111-f0b99ab7c55bb0ba6116590272079979-1024-1024.png',
                  56,
                  56),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Fulano de Silva Souza',
                  style: txtNunitoBold(16),
                ),
              )
            ],
          ),
          listTile(Icons.chat, 'Conversa', 'Meu histórico de conversa'),
          listTile(Icons.notifications_active, 'Notificações',
              'Minhas notificações'),
          listTile(Icons.route, 'Pedidos', 'Meu histórico de Pedidos'),
          listTile(Icons.payment, 'Pagamentos', 'Meu histórico de Pagamentos'),
          listTile(Icons.star, 'Favoritos', 'Meu histórico de conversa'),
          listTile(Icons.shopping_cart, 'Assinaturas',
              'Meu histórico de Assitunaras'),
          listTile(Icons.local_offer, 'Cupons', 'Meus cupons usados'),
          listTile(Icons.explore, 'Descubrir', 'Descobrir novos restaurantes'),
          listTile(Icons.place, 'Endereços', 'Meus endereços'),
          listTile(Icons.account_circle, 'Dados da Conta',
              'Minhas informações de conta'),
        ],
      ),
    );
  }
}
