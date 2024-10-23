import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {

  final _mat = [
    0,0,0,    0,0,0,    0,0,0,
    0,0,0,    0,0,0,    0,0,0,
    0,0,0,    0,0,0,    0,0,0,

    0,0,0,    0,0,0,    0,0,0,
    0,0,0,    0,0,0,    0,0,0,
    0,0,0,    0,0,0,    0,0,0,

    0,0,0,    0,0,0,    0,0,0,
    0,0,0,    0,0,0,    0,0,0,
    0,0,0,    0,0,0,    0,0,0,
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for(int i = 0; i < 9; i++)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (int j = 0; j < 9; j++)
                    Text(
                      _mat[i * 9 + j].toString(),
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 1; i < 10; i++)
                  GestureDetector(
                    child: 
                      Text(
                        i.toString(),
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.green
                        ),
                      ),
                  )
                  
              ],
            )
            
          ],
        ),
    );
  }
}