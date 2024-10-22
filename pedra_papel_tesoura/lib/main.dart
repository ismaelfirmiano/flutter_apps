import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    title: "Projeto 2",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Pedra papel tesoura"),
        backgroundColor: Colors.blue,
      ),
      body: Home()
    )
  ));
}