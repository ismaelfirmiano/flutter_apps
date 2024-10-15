import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _frase = "Clique no botão para gerar uma frase!";

  final List<String> _frases = [
    "O sucesso é a soma de pequenos esforços repetidos diariamente.",
    "Seja a mudança que você deseja ver no mundo.",
    "Acredite em você e tudo será possível.",
    "Cada passo é um avanço em direção ao seu objetivo.",
    "Você é mais forte do que imagina.",
    "Desafios são oportunidades disfarçadas.",
    "A persistência é o caminho para a vitória.",
    "Não importa o quão devagar você vá, desde que não pare.",
    "Seja o seu próprio incentivo.",
    "A ação é a chave para todo sucesso.",
    "O impossível é apenas uma opinião.",
    "Grandes conquistas nascem de grandes desafios.",
    "Todo esforço será recompensado.",
    "Você é o autor da sua própria história.",
    "Nunca é tarde para recomeçar.",
    "Acredite no seu potencial.",
    "O limite é apenas uma linha imaginária.",
    "Faça hoje o que o seu futuro vai te agradecer.",
    "Suas escolhas moldam o seu futuro.",
    "Tudo o que você precisa já está dentro de você.",
  ];

  void clicked() {

    int i = Random().nextInt(20);

    setState(() {
      _frase = _frases[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "images/title.png",
            width: 200,
            ),
          SizedBox (
            width: double.infinity,
            height: 50,
            child: Text(
              _frase,
              style: TextStyle(
                fontSize: 15
              ),
              textAlign: TextAlign.center,
            )
          ),
          ElevatedButton(
            onPressed: clicked,
            child: Text("Clique aqui")
          )
        ],
      )
    );
  }
}