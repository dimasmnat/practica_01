import 'package:flutter/material.dart';
import 'package:practica_01/src/myAlertDialog.dart';

class DatosUsuarios extends StatefulWidget {
  @override
  _DatosUsuarios createState() => _DatosUsuarios();

}

class _DatosUsuarios extends State<DatosUsuarios> {
  var _name;
  var _phone;

  final nameCtrl = new TextEditingController();
  final phoneCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 01'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Image.asset('assets/images/heart.jpeg'),
            SizedBox(height: 10.0),
            TextField(
              controller: nameCtrl,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5),
                hintText: 'Ingresa tu nombre',
              ),
            ),
            TextField(
              controller: phoneCtrl,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5),
                hintText: 'Ingresa tu celular',
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                onPrimary: Colors.black),
              child: Text('Enviar'),
              onPressed: (){
                _name = nameCtrl.text;
                _phone = phoneCtrl.text;


              setState(() {
                showAlertDialog(
                  context,
                  'El usuario $_name, tiene el teléfono $_phone',
                  'Mi App :)',
                  'OK',
                  ':(');
              });
              }),
          ])
    );
  }
}