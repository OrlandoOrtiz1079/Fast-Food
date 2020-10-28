//Orlando Ortiz
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica_1/models/users.dart';

class SingUp extends StatefulWidget {
  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  User user = User();

  @override
  Widget build(BuildContext context) {
    /*Borar variables
    String nombre = "", email = "", telefono = "", contra = "", contra2 = "";

    final nombreController = TextEditingController();
    final emailController = TextEditingController();
    final telefonoController = TextEditingController();
    final contraController = TextEditingController();
    final contra2Controller = TextEditingController();*/

    @override
    void disponse() {
      /*  nombreController.dispose();
      emailController.dispose();
      telefonoController.dispose();
      contraController.dispose();
      contra2Controller.dispose();*/
      // User.dispose();
    }

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sing up"),
          backgroundColor: Color(0xffFC4F32),
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Container(
              color: Color(0xfffeefd5),
              child: Center(
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Image(
                          image: AssetImage('assets/images/SingUp.png'),
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
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[a-zA-Z]+|\s')),
                            ],

                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Ingrese su nombre';
                              }
                              if (value.length < 5) {
                                return 'Nombre demasiado corto';
                              }
                              user.name = value;
                              return null;
                            },

                            //autofocus: true,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Nombre",
                              hintStyle: TextStyle(fontSize: 18),
                              prefixIcon: Icon(
                                Icons.account_circle_sharp,
                                size: 30,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
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
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(
                                  r'/^(([^<>()\[\]\\.,;:\s@”]+(\.[^<>()\[\]\\.,;:\s@”]+)*)|(“.+”))@((\[[0–9]{1,3}\.[0–9]{1,3}\.[0–9]{1,3}\.[0–9]{1,3}])|(([a-zA-Z\-0–9]+\.)+[a-zA-Z]{2,}))$/'))
                            ],
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(fontSize: 18),
                                prefixIcon: Icon(
                                  Icons.mail,
                                  size: 30,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
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
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(10),
                            ],
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Ingrese un numero';
                              }
                              if (value.length != 10) {
                                return 'Ingresa 10 mueros exactos';
                              }
                              user.phone = value;
                              return null;
                            },
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Telefono",
                                hintStyle: TextStyle(fontSize: 18),
                                prefixIcon: Icon(
                                  Icons.phone,
                                  size: 30,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
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
                            // controller: contraController,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            obscureText: true,
                            obscuringCharacter: "*",
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Contraseña",
                                hintStyle: TextStyle(fontSize: 18),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  size: 30,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
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
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            obscureText: true,
                            obscuringCharacter: "*",
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Confirmar contraseña",
                              hintStyle: TextStyle(fontSize: 18),
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 30,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
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
                            onPressed: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'REGISTRARSE',
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
      ),
    );
  }
}
