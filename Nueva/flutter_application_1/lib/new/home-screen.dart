import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key?key}):super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int numero=0;
  int numero2=0;
  int numer03=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 66, 146, 97),
      appBar: AppBar( 
      backgroundColor: const Color.fromARGB(255, 255, 250, 250),
      title: const Text("VAMOS VERDE", style: TextStyle(color: Colors.black)),
    ),
    body: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
     const Text('Random', style: TextStyle(fontSize: 25),),
      Text('$numero$numero2$numer03', style: const TextStyle(fontSize: 25),)],
    ),
    ),
    floatingActionButton: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Positioned(
          bottom: 10,
          right: 10,
          child: FloatingActionButton(
          backgroundColor: Colors.white, foregroundColor: Colors.green, onPressed: () { 
            setState(() {
            numero= 0 + Random().nextInt(9);
            numero2= 0 + Random().nextInt(9);
            numer03= 0 + Random().nextInt(9);            
            });
           },
           child: const Icon(Icons.shuffle)),
      
        )
      ]),
    );

  }
}