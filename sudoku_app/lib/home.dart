import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String? _escolhaUsuario = "m";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: "Digite seu nome"
            ),
          ),
          const Text(
            "Escolha um nível",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17
            ),
            ),
          RadioListTile(
            title: const Text("Fácil"),
            value: "f",
            groupValue: _escolhaUsuario,
            onChanged: (String? escolha){
              setState(() {
                _escolhaUsuario = escolha;
              });
            },
          ),
          RadioListTile(
            title: const Text("Médio"),
            value: "m",
            groupValue: _escolhaUsuario,
            onChanged: (String? escolha){
              setState(() {
                _escolhaUsuario = escolha;
              });
            },
          ),
          RadioListTile(
            title: const Text("Difícil"),
            value: "d",
            groupValue: _escolhaUsuario,
            onChanged: (String? escolha){
              setState(() {
                _escolhaUsuario = escolha;
              });
            },
          ),
          RadioListTile(
            title: const Text("Expert"),
            value: "e",
            groupValue: _escolhaUsuario,
            onChanged: (String? escolha){
              setState(() {
                _escolhaUsuario = escolha;
              });
            },
          ),
          ElevatedButton(
            child: const Text("CONFIRMAR"),
            onPressed: (){
              print("Apertou o botão");
            },
          )
           
        ],
      ),
    );
  }
}