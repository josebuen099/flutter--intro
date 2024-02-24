import 'package:flutter/material.dart';
import 'package:jbmensaje/config/themes/Themes_customs.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemesCustoms(selectColor: 2).theme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child:FilledButton.tonal(
            onPressed: () { 
              
             }, 
             child: const Text('hellou madafakers'),),
        ),
      ),
    );
  }
}