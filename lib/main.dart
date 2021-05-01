import 'package:flutter/material.dart';
import 'package:semana6_formulario/pages/formulario_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Formulario',
      home: InputPage(),
    );
  }
}

//demo
