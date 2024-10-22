// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'home.dart';
void main(){
  runApp(MaterialApp(
    title: "Projeto 1",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Frases Aleatórias",
          style: TextStyle(color: Colors.white)
        ),
        backgroundColor: Colors.green,
      ),
      body: Home()
    )
  ));
}