import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //Removendo banner de debug
    title: "Alinhamentos e Espaçamentos",
    home: Container(
      decoration: BoxDecoration(border: Border.all(width: 5, color: Colors.red)), //Borda vermelha
      padding: EdgeInsets.all(20), //Atribuindo padding no container
      margin: EdgeInsets.all(25), //Atribuindo margin no container
      
      //OUTRAS MANEIRAS DE USAR EdgeInsets()
      //padding: EdgeInsets.only(top: 20),
      //margin: EdgeInsets.fromLTRB(left, top, right, bottom),

      child: Column(
        children: [
          
          Text("A expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica", 
            textAlign: TextAlign.justify, //Justificando o Texto
            style: TextStyle(
              fontSize: 30, //Tamanho
              color: Colors.white, //Cor
              decoration: TextDecoration.none //Removendo decorações
            ),
          ),

        ],
      ),
    )
  ));
}
