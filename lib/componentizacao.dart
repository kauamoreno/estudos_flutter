
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: ControladorTema.instance,
      builder: (BuildContext context, Widget? child) { 
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.green,
            brightness: ControladorTema.instance.darkTema ? Brightness.dark : Brightness.light
            //Brightness.light,
          ),
          home: PaginaHome()
        );
      }
       
    );
  }
}

class PaginaHome extends StatefulWidget{
  @override
  State<PaginaHome> createState() {
    return PaginaHomeState();
  }
}

class PaginaHomeState extends State<PaginaHome>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        //Leading - Parte direita do AappBar
        leading: const Icon(Icons.account_circle_rounded, size: 35),
        leadingWidth: 100,

        title: const Center(
          child: Text('App Bar', style: TextStyle(
            fontSize: 30)
          ),
        ), 

        actions: [
          ComponenteSwitch()
        ],
      ),

      body:Center(         
        child: Text('Mudar Tema AppBar - Componentização', textAlign: TextAlign.center, style: TextStyle(fontSize: 30),)
      ),
    );
  }
}

//Será responsavel pela regra de negocio
//Para boas praticas, colocar em arquivo a parte 
class ControladorTema extends ChangeNotifier{

  static ControladorTema instance = ControladorTema();

  bool darkTema = false;
  mudarTema(){
    darkTema = !darkTema;
    notifyListeners(); //Para falar que foi modificado
  }
}

class ComponenteSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(value: ControladorTema.instance.darkTema, 
      onChanged: (value){
        ControladorTema.instance.mudarTema();
      }
    );
  }
}