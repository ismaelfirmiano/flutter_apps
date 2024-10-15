import 'package:flutter/material.dart';
import 'home.dart';
void main(){
  runApp(MaterialApp(
    title: "Projeto 1",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Frases Aleatórias"),
        backgroundColor: Colors.blue,
      ),
      body: Home()
    )
  ));
}