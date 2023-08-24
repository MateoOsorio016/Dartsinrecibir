import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      decoration: const InputDecoration(
        hintText: 'Nombre usuario',
        labelText: 'Nombre',
        helperText: 'Solo letra',
        counterText: '3 caracteres',
        prefixIcon: Icon(Icons.abc_sharp),
        suffixIcon: Icon(Icons.ac_unit_rounded),
        icon: Icon(Icons.accessibility),

      ),
      onChanged: (value){
        print('Value: $value');
      },
    );
  }
}