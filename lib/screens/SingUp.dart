import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    String nombre = "", email = "", telefono = "", contra = "", contra2 = "";

    final nombreController = TextEditingController();
    final emailController = TextEditingController();
    final telefonoController = TextEditingController();
    final contraController = TextEditingController();
    final contra2Controller = TextEditingController();

    @override
    void disponse() {
      nombreController.dispose();
      emailController.dispose();
      telefonoController.dispose();
      contraController.dispose();
      contra2Controller.dispose();
      super.dispose();
    }

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sing up"),
          backgroundColor: Color(0xffFC4F32),
        ),
        body: SingleChildScrollView(
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
                        child: TextField(
                          //autofocus: true,
                          controller: nombreController,
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
                        child: TextField(
                          controller: emailController,
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
                        child: TextField(
                          controller: telefonoController,
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
                        child: TextField(
                          controller: contraController,
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
                        child: TextField(
                          controller: contra2Controller,
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
                          onPressed: () {
                            nombre = nombreController.text;
                            email = emailController.text;
                            telefono = telefonoController.text;
                            contra = contraController.text;
                            contra2 = contra2Controller.text;
                            if (nombre == "" ||
                                email == "" ||
                                telefono == "" ||
                                contra == "" ||
                                contra2 == "") {
                              showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                        title: Center(
                                          child: Text("Campos vacios"),
                                        ),
                                        content: Text(
                                            "Existen campos vacios por favor de verificar"),
                                        actions: [
                                          FlatButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text("Aceptar"))
                                        ],
                                      ));
                            } else {
                              if (contra != contra2) {
                                showDialog(
                                    context: context,
                                    builder: (_) => AlertDialog(
                                          title: Center(
                                            child:
                                                Text("Contraseña no conincide"),
                                          ),
                                          content: Text(
                                              "Las contraseñas no coinciden"),
                                          actions: [
                                            FlatButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                  contra2Controller.clear();
                                                  contraController.clear();
                                                },
                                                child: Text("Aceptar"))
                                          ],
                                        ));
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (_) => new AlertDialog(
                                          title: Center(
                                              child: new Text(
                                            "Datos ingresados",
                                            style: TextStyle(),
                                          )),
                                          content: Text(
                                              "Nombre: $nombre  \nEmail: $email \nTelefono: $telefono "),
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
                              }
                            }
                          },

                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
    );
  }
}
