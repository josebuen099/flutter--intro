import 'package:aplicacion_2/presentacion/screens/counter_funcion_screen.dart';
import 'package:aplicacion_2/presentacion/screens/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.green
        ),
        home:const CounterFuncionScreen());
  }
}
