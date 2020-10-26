//Orlando Ortiz
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practica_1/screens/Login.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xfffeefd5),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('assets/images/balloon-shape.png'),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Image(
                  image: AssetImage('assets/images/FastFood-Logo.png'),
                ),
              ),
            ),
            Center(
              child: Image(
                image: AssetImage('assets/images/online_groceries.png'),
                width: 200,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'El directorio de comida',
                  style: TextStyle(
                    fontFamily: "Poppins-LightItalic",
                    fontSize: 28,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    'Busca. Encuentra. Pide.\n       Recibe. Disfruta.',
                    style: TextStyle(
                      fontFamily: "Poppins-Thin.ttf",
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFC4F32),
                      borderRadius: BorderRadius.circular(15)),
                  width: 320,
                  height: 65,
                  margin: EdgeInsets.only(top: 50),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'INICIAR AHORA',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
