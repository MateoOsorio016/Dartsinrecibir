import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'dart:math';

class CalculadoraScreen extends StatefulWidget {
  const CalculadoraScreen({super.key});

  @override
  State<CalculadoraScreen> createState() => _CalculadoraScreenState();
}

class _CalculadoraScreenState extends State<CalculadoraScreen> {
  final numero1Controller=TextEditingController();
  final numero2Controller=TextEditingController();
  final resultadoController=TextEditingController();
  int resultado=0;
  double result=0;
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text('Uwu', style: TextStyle(color: Color.fromARGB(255, 255, 252, 252)))
      ),
      body: Column( 
        children:[TextField(
          controller:numero1Controller,
          obscureText: false,
          decoration: const InputDecoration(
            border:OutlineInputBorder(),
            labelText: 'Número 1',
          ),
        ),TextField(
          controller:numero2Controller,
          obscureText: false,
          decoration: const InputDecoration(
            border:OutlineInputBorder(),
            labelText: 'Número 2',
          ),
        ),
        TextField(
          controller:resultadoController,
          obscureText: false,
          decoration: const InputDecoration(
            border:OutlineInputBorder(),
            labelText: 'Resultado: ',
          ),
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: (){
            resultado= int.parse(numero1Controller.text)+ int.parse(numero2Controller.text);
            resultadoController.text=resultado.toString();
            
          },
        ),
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: (){
            resultado= int.parse(numero1Controller.text)- int.parse(numero2Controller.text);
            resultadoController.text=resultado.toString();
          },
        ),
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: (){
            resultado= int.parse(numero1Controller.text)*int.parse(numero2Controller.text);
            resultadoController.text=resultado.toString();
          },
        ),
        IconButton(
          icon: const Icon(Icons.call_split),
          onPressed: (){
            result= double.parse(numero1Controller.text) / double.parse(numero2Controller.text);
            resultadoController.text=resultado.toString();
          },
        ),
        IconButton(
          icon: const Icon(Icons.percent),
          onPressed: (){
            resultado= (int.parse(numero1Controller.text) % int.parse(numero2Controller.text));
            resultadoController.text=resultado.toString();
          },
        ),
        IconButton(
          icon: const Icon(Icons.superscript),
          onPressed: (){
            int num= int.parse(numero1Controller.text);
            int expo= int.parse(numero2Controller.text);
            double resultado = pow(num, expo).toDouble();
            resultadoController.text=resultado.toString();
          },
        ),
        

        ]
            )
            );
  }
}
