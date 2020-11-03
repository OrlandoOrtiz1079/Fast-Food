import 'package:flutter/material.dart';
//import 'package:practica_1/main.dart';
import 'package:divine_card/divine_card.dart';


class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hola Orlando"),
        ),
        body: Container(
          child: Column(
            children: [divineCard(
     height: 200.0,
     color: Color(0xFF00578D),
     shadowColor: Colors.black38,
     blurRadius: 12.0,
     img: AssetImage('images/fondo.jpg'),
     imgHeight: 200.0,
     imgWidth: 200.0,
     buttonText: 'Your Text',
     buttonColor: Colors.black,
     buttonBackground: Colors.white,
     icon: Icons.arrow_forward_ios,
     iconColor: Colors.black,
     title: 'Your text goes',
     subtitle: 'Here..',
     fontSize: 18.0,
     fontColor: Colors.white,
 
             ),],
          ),
        ),
      ),
    );
  }
}
