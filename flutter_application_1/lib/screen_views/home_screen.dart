import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int A = 0;
  int B = 0;
  int C = 0;
  String gana = '';

  String ganador() {
    if (A > B && A > C) {
      gana = 'A';
    } else if (B > A && B > C) {
      gana = 'B';
    } else if (C > A && C > B) {
      gana = 'C';
    } else if (A == B && A == C && B == C) {
      gana = 'Empate';
    } else if (A == B) {
      gana = 'Empate entre A y B';
    } else if (A == C) {
      gana = 'Empate entre A y C';
    } else if (C == B) {
      gana = 'Empate entre C y B';
    } else {
      gana = 'Empate entre A Y C';
    }
    return gana;
  }

  int total() {
    return A + B + C;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 66, 146, 97),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 250, 250),
        title: const Text(
          "VAMOS VERDE",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Votación', style: TextStyle(fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCounter('A'),
                SizedBox(width: 20),
                _buildCounter('B'),
                SizedBox(width: 20),
                _buildCounter('C'),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Text(
                  'Ganador: ${ganador()}',
                  style: const TextStyle(fontSize: 25),
                ),
                Text(
                  'Total: ${total()}',
                  style: const TextStyle(fontSize: 25),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCounter(String candidate) {
    int count = 0;
    if (candidate == 'A') {
      count = A;
    } else if (candidate == 'B') {
      count = B;
    } else if (candidate == 'C') {
      count = C;
    }

    return Column(
      children: [
        Text(
          '$count',
          style: const TextStyle(fontSize: 25),
        ),
        FloatingActionButton(
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
          onPressed: () {
            setState(() {
              if (candidate == 'A') {
                A++;
              } else if (candidate == 'B') {
                B++;
              } else if (candidate == 'C') {
                C++;
              }
            });
          },
          child: Text(candidate),
        ),
      ],
    );
  }
}









  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: const Color.fromARGB(255, 66, 146, 97),
  //     appBar: AppBar( 
  //     backgroundColor: Color.fromARGB(255, 255, 250, 250),
  //     title: const Text("VAMOS VERDE", style: TextStyle(color: Colors.black)),
  //     ),
  //     body: Center(child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Escudo_de_Atl%C3%A9tico_Nacional.png/334px-Escudo_de_Atl%C3%A9tico_Nacional.png'),) ,
      
      
  //   );
  // }