import 'package:flutter/material.dart';
import 'package:practica_1/screens/SingUp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String nombre = "";
  final nombreControler = TextEditingController();
  String contra = "";
  final contraControler = TextEditingController();

  @override
  void disponse() {
    nombreControler.dispose();
    contraControler.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFC4F32),
          title: Text(
            "Login",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xfffeefd5),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                    child: Image(
                      image: AssetImage('assets/images/Login.jpeg'),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      'Ingresa tus credenciales',
                      style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Text(
                      'registrandas para acceder',
                      style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(
                                10) //         <--- border radius here
                            ),
                      ),
                      child: TextField(
                        //autofocus: true,
                        controller: nombreControler,
                        style: TextStyle(color: Colors.black),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Ingresa tu gmail",
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.account_circle_rounded,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(
                                10) //         <--- border radius here
                            ),
                      ),
                      child: TextField(
                        controller: contraControler,
                        obscureText: true,
                        obscuringCharacter: "*",
                        style: TextStyle(color: Colors.black),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Contraseña",
                          hintStyle: TextStyle(),
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.lock_rounded,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "¿Aún no tienes una cuenta?",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 14),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SingUp()));
                        },
                        child: Text(
                          "Consigue una",
                          style: TextStyle(
                            fontFamily: "Poppins-Bold",
                            fontSize: 14,
                            color: Color(0xffFC4F32),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffFC4F32),
                          borderRadius: BorderRadius.circular(15)),
                      width: 300,
                      height: 65,
                      margin: EdgeInsets.only(top: 20),
                      child: FlatButton(
                        //splashColor: Colors.white,
                        //shape: CircleBorder(),
                        onPressed: () {
                          nombre = nombreControler.text;
                          contra = contraControler.text;
                          print("El nombre es $nombre");
                          print("La contraseña es $contra");

                          showDialog(
                              context: context,
                              builder: (_) => new AlertDialog(
                                    title: Center(
                                        child: new Text(
                                      "Datos ingresados",
                                      style: TextStyle(),
                                    )),
                                    content: Text(
                                        "El nombre: $nombre \nLa contraseña: $contra"),
                                    actions: <Widget>[
                                      FlatButton(
                                        child: Text('Cerrar'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                      FlatButton(
                                        child: Text('Aceptar'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      )
                                    ],
                                  ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'CONTINUAR',
                            style: TextStyle(
                              fontSize: 18,
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
        ),
      ),
    );
  }
}
