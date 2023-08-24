import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_views/cotizacion_input.dart';

class Cotizacion extends StatelessWidget {
  const Cotizacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cotización'),
      ),
      body: cotizacion_input(
        dropdownValue: ValueNotifier<String>('estarlai'),
        opciones: ['estarlai', 'Ron', 'Cerveza', 'Agua', 'Cafe'],
      ),
    );
  }
}