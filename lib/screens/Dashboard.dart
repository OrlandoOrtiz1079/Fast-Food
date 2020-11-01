import 'package:flutter/material.dart';
//import 'package:practica_1/main.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFC4F32),
          title: Text("Hola Orlando"),
          
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                  color: Color(0xffFC4F32),
                  child: Text("¿Qué quieres comer hoy?"))
            ],
          ),
        ),
      ),
    );
  }
}
