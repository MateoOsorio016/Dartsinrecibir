// ignore: file_names
import 'package:flutter/material.dart';

class Ambientes extends StatefulWidget {
  const Ambientes({ Key? key }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  AmbientesState createState() => AmbientesState();
}

class AmbientesState extends State<Ambientes> {
  String dropdowmnValue = '218';
List<String> opciones= ['218', '801', '210', '304', '805'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOLA"),
      ),
      body: Container(
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
                      style: const TextStyle(fontSize: 25),
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
          ],
        ),
      ),
    );
  }
}
