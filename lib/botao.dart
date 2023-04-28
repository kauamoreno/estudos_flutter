import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //Removendo banner de debug
    title: "Botão",
    home: Row(children: [
      
      TextButton(
        style: null,
        onPressed: (){
          print("Olá");
        },
        child: Text('Texto do Botão',
          style: TextStyle(
            fontSize: 30,
            decoration: TextDecoration.none,
            color: Colors.white
          ),
        ),
      ),

    ],)
  ));
}
