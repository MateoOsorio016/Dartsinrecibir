import 'package:flutter/material.dart';

class HojaVida extends StatefulWidget {
  const HojaVida({super.key});

  @override
  State<HojaVida> createState() => _HojaVidaState();
}

class _HojaVidaState extends State<HojaVida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hoja de Vida'),
        backgroundColor: const Color.fromARGB(255, 214, 159, 129),
      ),
      body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://i.redd.it/b5ds1itrwah61.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Color.fromARGB(255, 14, 175, 8)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'Informacion Personal',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Texto sin los estilos del contenedor
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              ' Nombre:                                            Mateo Osorio  \n Lugar y Fecha de Nacimiento:     Medellín 04 de Septiembre de 2003 \n Documento:                                    1000537437 \n Telefono:                                         3006141688',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
         Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Color.fromARGB(255, 14, 175, 8)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'Informacion Academica',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Texto sin los estilos del contenedor
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              ' Seccion Educativa Niño Jesus De Praga:      Primaria Academica \n Luis Carlos Galan Sarmiento:     Bachiller Academico',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
           Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Color.fromARGB(255, 14, 175, 8)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'Conocimientos Tecnicos',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Texto sin los estilos del contenedor
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              ' Phyton , MySQL , HTML/CSS , JAVA-JAVASCRIPT , PHP , MONGODB-NODEJS , MOVILES , .NET',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Color.fromARGB(255, 14, 175, 8)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'EXPERIENCIA LABORAL',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Texto sin los estilos del contenedor
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              'Soy un apasionado entusiasta de la programación y el desarrollo de software, con una sólida formación académica en informática. Aunque no tengo experiencia laboral previa en el campo, he adquirido conocimientos y habilidades a través de proyectos personales, cursos en línea y estudios universitarios. Estoy ansioso por aplicar mis destrezas en un entorno profesional y aprender de manera continua para crecer como desarrollador.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
          // Agrega más campos aquí
        ],
      ),
      ),
    );
  }
}