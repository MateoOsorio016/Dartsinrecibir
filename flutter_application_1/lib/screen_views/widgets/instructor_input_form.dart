  import 'package:flutter/material.dart';
  import 'package:flutter_application_1/screen_views/instructor_input.dart';


  class ClienteForm extends StatefulWidget {

    const ClienteForm({Key? key}) : super(key: key);

  @override
  State<ClienteForm> createState() => _ClienteFormState();
}

class _ClienteFormState extends State<ClienteForm> {
    @override
    ClienteForm createState()=> ClienteForm();

    Widget build(BuildContext context) {
      int? numerodeaves;
      int? cantidaddecomida;
      int? numerocostales;

      return Scaffold(
        appBar: AppBar(
          title: const Text('Instructor'),
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: [
                InstructorForm(
                  hintText: 'Numero de aves',
                  labelText: 'Numero',
                  onChanged: (value){
                setState((){
                    numerodeaves=value as int?;
                  });
                },
              ),
              InstructorForm(
                  hintText: 'Cantidad de comida',
                  labelText: 'Gramos',
                  onChanged: (value){
                setState((){
                    cantidaddecomida=value as int?;
                  });
                },
              ),
              InstructorForm(
                  hintText: 'Numero de costales de 40kg',
                  labelText: 'Numero',
                  onChanged: (value){
                setState((){
                    numerocostales=value as int?;
                  });
                },
              ),
              ],
            ),
          ),
        ),
      );
    }
}
void _funcion(){
  
}

