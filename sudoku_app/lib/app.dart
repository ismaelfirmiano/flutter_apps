import 'package:flutter/material.dart';

import 'game.dart';
// ignore: unused_import
import 'home.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SUDOKU"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Game()
    );
  }
}