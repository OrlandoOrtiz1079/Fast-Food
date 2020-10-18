import 'package:flutter/material.dart';
import 'package:practica_1/screens/welcome.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Fast Food",
        theme: ThemeData(primaryColor: Colors.orange),
        home: Welcome());
  }
}
