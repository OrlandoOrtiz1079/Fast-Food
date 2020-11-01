//Orlando Ortiz
import 'package:flutter/material.dart';
import 'package:practica_1/Providers/UserPrv.dart';
import 'package:practica_1/models/users.dart';
import 'package:practica_1/screens/Dashboard.dart';
import 'package:practica_1/screens/SingUp.dart';
import 'package:practica_1/utils/string_admin.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String nombre = "";
  final nombreControler = TextEditingController();
  String contra = "";
  final contraControler = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey();
  User user = User();

  @override
  void disponse() {
    nombreControler.dispose();
    contraControler.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final UserPrv userProvider = Provider.of<UserPrv>(context);
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFC4F32),
          title: Text(
            "Login",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xfffeefd5),
            child: Form(
              key: _formkey,
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
                        child: TextFormField(
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
                        child: TextFormField(
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
                            style:
                                TextStyle(fontFamily: "Poppins", fontSize: 14),
                          ),
                        ),
                        TextButton(
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
                            final sb = SnackBar(
                              content:
                                  Text('!Usuario o contraseña incorrectos'),
                            );

                            if (!_formkey.currentState.validate()) {
                              return;
                            }

                            var retUser = userProvider.getUser(user.email);

                            print(retUser.password + '2143qr');
                            if (retUser != null) {
                              if (!StringAdm.validarPasswords(
                                  retUser.password, user.password)) {
                                Scaffold.of(context).showSnackBar(sb);
                                print('contraseña no coincide');
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Dashboard()));
                              }
                            } else {
                              Scaffold.of(context).showSnackBar(sb);
                            }

                            //nombre = nombreControler.text;
                            //contra = contraControler.text;
                            print("El nombre es $nombre");
                            print("La contraseña es $contra");
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
      ),
    );
  }
}
