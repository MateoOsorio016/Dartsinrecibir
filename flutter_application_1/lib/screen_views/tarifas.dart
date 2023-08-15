// ignore: file_names

import 'package:flutter/material.dart';

class Tarifas extends StatefulWidget {
  const Tarifas({ Key? key }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  TarifasState createState() => TarifasState();
}

class TarifasState extends State<Tarifas> {
  String dropdowmnValue = 'Desarrollo Web';
List<String> opciones= ['Desarrollo Web', 'Desarrollo movil', 'Mantenimiento', 'Bases de datos', 'Cursos de formacion'];
List<String> descripciones= [ 
    'Se desarrolla Web xd.',
    'Desarrolla Aplicaciones Moviles.',
    'Lavar baños.',
    'Administrar base de datos.',
    'Profesor',
    ];
    List <String> valor= ["3.000.000" "", "5.000.000", "6.000.000", "1.200.000", "4.500.000",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOLA"),
      ),
      body: Center(
        child: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            DropdownButton<String>(
              value: dropdowmnValue,
              items: opciones
                .map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(fontSize: 20),
                    ),
                  );
                }
              ).toList(),
              onChanged: (String? newValue){
                setState(() {
                  dropdowmnValue = newValue!;
                  print(newValue);
                });
              }
            ),
            const SizedBox(height: 20,),
            Text('Description : ${descripciones[opciones.indexOf(dropdowmnValue)]}', style: const TextStyle(color: Colors.blue), ),
            const SizedBox(height: 20,),
            Text('Valor: ${valor[opciones.indexOf(dropdowmnValue)]} Pesos colombina '),
          ],
        ),
      ),
      ),
    );
  }
}
