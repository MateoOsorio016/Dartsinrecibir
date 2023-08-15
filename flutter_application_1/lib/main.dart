import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_views/calculadora.dart';
import 'package:flutter_application_1/screen_views/hojadevida.dart';
import 'package:flutter_application_1/screen_views/home_screen.dart';
import 'package:flutter_application_1/screen_views/listview.dart';
import 'package:flutter_application_1/screen_views/dropDown.dart';
import 'package:flutter_application_1/screen_views/tarifas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyList()
      home: Tarifas()
      
    );
  }
}

