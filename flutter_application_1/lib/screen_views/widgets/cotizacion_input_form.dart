import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_views/cotizacion_input.dart';
import 'package:flutter_application_1/screen_views/cotizacion_inputs.dart';

// ignore: must_be_immutable
class Cotizacion extends StatefulWidget {

const Cotizacion({Key? key}) : super(key: key);

  @override
  State<Cotizacion> createState() => _CotizacionState();
}

class _CotizacionState extends State<Cotizacion> {
  TextEditingController precio = TextEditingController();
  TextEditingController cantidad= TextEditingController();
  final result= TextEditingController();
  int resultado=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cotización'),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child:  Column(
          children: [
            cotizacion_input(
        dropdownValue: ValueNotifier<String>('estarlai'),
        opciones: const ['estarlai', 'Ron', 'Cerveza', 'Agua', 'Cafe'],
      ),
      Inputs(hintText: "Precio", labelText: "Ingrese el precio", controller: precio,),
      Inputs(hintText: "Cantidad", labelText: "Ingrese la cantidad", controller: cantidad,),
      TextField(
        controller: result,
        enabled: false,
        obscureText: false,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Resultado: ",
        ),
      ),
      IconButton(
        icon: const Icon(Icons.remove),
        onPressed: (){
          setState(() {
          resultado= int.parse(precio.text)* int.parse(cantidad.text);
          result.text=resultado.toString();

          });
        },
      ),
      ]
    )
      )
    )
      
      
    );
  }
}