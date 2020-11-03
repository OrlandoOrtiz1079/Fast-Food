import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica_1/Providers/UserPrv.dart';
import 'package:practica_1/models/users.dart';
import 'package:practica_1/screens/Dashboard.dart';
import 'package:practica_1/screens/SingUp.dart';
import 'package:practica_1/screens/splash.dart';
import 'package:practica_1/utils/StringAdm.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  User user = User();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    final UserPrv userProvider = Provider.of<UserPrv>(context);

    return Scaffold(
      backgroundColor: Color(0xfffeefd5),
      appBar: AppBar(
        backgroundColor: Color(0xfff44336),
        title: Row(
          children: [Text('Login')],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
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
            Container(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(RegExp(r'\s'))
                      ],
                      validator: (value) {
                        if (value.isEmpty) {
                          print('No se ingreso email');
                          return 'Debes ingresar tu email';
                        }
                        if (!StringAdm.validarEmail(value)) {
                          return 'Ingresa un Email valido';
                        }
                        user.email = value;
                        return null;
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 10.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                          size: 30,
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Debes ingresar tu contraseña';
                          }
                          if (value.length < 4) {
                            return 'Contraseña demasiado corta';
                          }
                          user.password = value;
                          return null;
                        },
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 10.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.black,
                            size: 30,
                          ),
                          hintText: 'Contraseña',
                          hintStyle: TextStyle(
                            color: Colors.black,
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
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 14),
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
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 60.0,
                        child: LogginButton(
                            formKey: _formKey,
                            user: user,
                            userProvider: userProvider),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LogginButton extends StatelessWidget {
  const LogginButton({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required this.user,
    @required this.userProvider,
  })  : _formKey = formKey,
        super(key: key);
  final GlobalKey<FormState> _formKey;
  final User user;
  final UserPrv userProvider;

  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        final sb = SnackBar(
          content: Text('¡Usuario o contraseñas incorrectos'),
        );
        print("Bienvenido");
        print("$user.email");
        print("$user.password");
        if (!_formKey.currentState.validate()) {
          return;
        }
        var retUsr = userProvider.getUser(user.email);
        print(retUsr.password);
        if (retUsr != null) {
          if (!StringAdm.validarPasswords(retUsr.password, user.password)) {
            Scaffold.of(context).showSnackBar(sb);
            print('Las contraseñas no coinciden');
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Dashboard(),
                ));
            print('Encontrado');
          }
        } else {
          Scaffold.of(context).showSnackBar(sb);
          print('No encontrado');
        }
        _formKey.currentState.save();
      },
      child: Text(
        'INICIAR SESIÓN',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Color.fromRGBO(252, 79, 50, 1),
        ),
      ),
    );
  }
}
