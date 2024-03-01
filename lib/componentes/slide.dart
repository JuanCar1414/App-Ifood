import 'dart:async';
import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  int paginaAtual = 0;
  int quandtidadeDePagina = 4;
  PageController controller = PageController();
  List<double> progresso = [0.0, 0.0, 0.0, 0.0];

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      int page = controller.page!.round();

      if (page != paginaAtual) {
        setState(() {
          paginaAtual = page;
        });
      }
    });
    proximaPage();
    resetar();
  }

  void proximaPage() {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      if (paginaAtual < quandtidadeDePagina - 1) {
        controller.nextPage(
            duration: const Duration(milliseconds: 300), curve: Curves.linear);
      } else {
        controller.animateToPage(0,
            duration: const Duration(milliseconds: 200), curve: Curves.linear);
      }
    });
  }

  iniciaOProgresso() {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        if (progresso[paginaAtual] < 1) {
          progresso[paginaAtual] += 0.02;
        }
      });
    });
  }

  void resetar(){
    for(int i = 0; i < quandtidadeDePagina; i++){
      progresso[i] += 0;
    }
    iniciaOProgresso();
  }

  List<Widget> indicator(){
    List<Widget> list = [];
    for(int i=0; i < quandtidadeDePagina; i++){
      list.add(Container(
        width: 50,
        height: 5,
        margin: const EdgeInsets.all(8),
        child: LinearProgressIndicator(
          value: progresso[i],
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation<Color>(
            paginaAtual == i? Colors.blue : Colors.grey
          ),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.all(8),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView(
            controller: controller,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    image: const DecorationImage(
                        image: AssetImage(
                          'lib/assets/pizza.gif',
                        ),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    image: const DecorationImage(
                        image: AssetImage(
                          'lib/assets/carne.gif',
                        ),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    image: const DecorationImage(
                        image: AssetImage(
                          'lib/assets/sanduiche.gif',
                        ),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    image: const DecorationImage(
                        image: AssetImage(
                          'lib/assets/massa.gif',
                        ),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicator(),
          )
        ],
      ),
    );
  }
}
