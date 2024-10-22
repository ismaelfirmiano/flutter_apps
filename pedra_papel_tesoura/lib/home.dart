import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> imagens = [
    "images/pedra.png",
    "images/papel.png",
    "images/tesoura.png"
  ];

  String _computador = "images/default.png";
  String _usuario = "images/default.png";
  String _resultado = "Escolha um dos três";

  void novaRodada(int x){
    Random rand = Random();
    int i = rand.nextInt(3);

    if(x == i){
      _resultado = "Empate";
    } else if ((!(i == 0 && x == 2) && (x > i)) || (i == 2 && x == 0)) {
      _resultado = "Ganhou";
    } else {
      _resultado = "Perdeu";
    }
    
    setState(() {
      _usuario = imagens[x];
      _computador = imagens[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Computador",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: Image.asset(
                            _computador
                          ),
                        )
                        
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Usuário",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: Image.asset(
                            _usuario
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ]
            ),
          Text(
            _resultado,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: GestureDetector(
                  onTap: () => novaRodada(0),
                  child: Image.asset("images/pedra.png"),
                  )
              ),
              SizedBox(
                width: 80,
                height: 80,
                child: GestureDetector(
                  onTap: () => novaRodada(1),
                  child: Image.asset("images/papel.png"),
                )
              ),
              SizedBox(
                width: 80,
                height: 80,
                child: GestureDetector(
                  onTap: () => novaRodada(2),
                  child: Image.asset("images/tesoura.png"),
                )
              ),
            ],
          )
        ],
      )
    );
  }
}