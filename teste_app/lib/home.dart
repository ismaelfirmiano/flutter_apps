// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste_app/body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TÍTULO"),
        backgroundColor: Colors.green,
      ),
      body: Body(),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.blueAccent,
        child: Text("Bottom"),
      ),
    );
  }
}