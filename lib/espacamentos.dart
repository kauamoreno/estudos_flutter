import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //Removendo banner de debug
    title: "Espaçamentos",
    home: Container(
      padding: EdgeInsets.all(20), //Atribuindo padding no container
      margin: EdgeInsets.all(25), //Atribuindo margin no container

      child: Column(
        children: [
          
          Text("t1"),

          Padding(
            padding: EdgeInsets.only(top: 40, bottom: 40),
            child: Text("t2"),
          ),

          Text("t3"),

        ],
      ),
    )
  ));
}