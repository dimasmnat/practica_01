import 'package:flutter/material.dart';
import 'package:practica_01/src/userData.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Practia 01', 
      home: Center(
        child: DatosUsuarios(),
        )
    );
  }
}