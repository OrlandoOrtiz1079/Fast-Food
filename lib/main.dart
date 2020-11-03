//Orlando Ortiz
import 'package:flutter/material.dart';
import 'package:practica_1/Providers/UserPrv.dart';
import 'package:practica_1/screens/Dashboard.dart';
import 'package:practica_1/screens/splash.dart';
import 'package:practica_1/screens/welcome.dart';
import 'package:provider/provider.dart';
import 'Providers/UserPrv.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserPrv()),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Fast Food",
        theme: ThemeData(primaryColor: Color(0xffFC4F32)),
        home: Scaffold(
          body: PageView(
            children: [Splash(), Welcome()],
          ),
        ));
  }
}
