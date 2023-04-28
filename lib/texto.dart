import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //Removendo banner de debug
    title: "Texto",
    home: Column(children: [
      
      Text("A expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica para preencher os espaços de texto em publicações para testar e ajustar aspectos visuais antes de utilizar conteúdo real", 
        style: TextStyle(
          fontSize: 30, //Tamanho
          color: Colors.white, //Cor
          fontWeight: FontWeight.bold, //Negrito 
          letterSpacing: 5, //Espço entre as letras
          wordSpacing: 10, //Espaço entre as palavras
          decoration: TextDecoration.none //Removendo decorações
        ),
      ),

    ],)
  ));
}

