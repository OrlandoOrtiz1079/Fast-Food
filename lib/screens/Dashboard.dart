import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hola Orlando"),
          
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Card(
                        child: Container(
                          width: 230,
                          height: 185,
                          color: Colors.blue,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/burger.png',
                                    //  colorBlendMode: BlendMode.color,
                                    width: double.infinity,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        ' Mc Burger',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: "Poppins-Bold",
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text('   Hamburgesas'),
                                        flex: 2,
                                      ),
                                      Expanded(
                                        child: Text('Nachos'),
                                      ),
                                      Expanded(
                                        child: Text('Alitas'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        '4.7',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xfffeefd5),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.black,
                                                size: 30,
                                              ),
                                              Text('300m   ')
                                            ],
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xfffeefd5),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.access_time,
                                                color: Colors.black,
                                                size: 30,
                                              ),
                                              Text('20  ')
                                            ],
                                          )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        elevation: 10,
                      ),
                      Card(
                        child: Container(
                          width: 230,
                          height: 185,
                          color: Colors.blue,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/tacos.png',
                                    //  colorBlendMode: BlendMode.color,
                                    width: double.infinity,
                                    height: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        ' Tacos Tao',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: "Poppins-Bold",
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text('   Tacos al pastor'),
                                        flex: 1,
                                      ),
                                      Expanded(
                                        child: Text('Gringas'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        '4.0',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xfffeefd5),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.black,
                                                size: 30,
                                              ),
                                              Text('100m   ')
                                            ],
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xfffeefd5),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.access_time,
                                                color: Colors.black,
                                                size: 30,
                                              ),
                                              Text('10  ')
                                            ],
                                          )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        elevation: 10,
                      ),
                    ],
                  )),
              Row(
                //Explorar categorias
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 15, 0, 8),
                    child: Text(
                      'Explorar categorias',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
              Container(
                ///rapida
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      elevation: 10,
                      child: Container(
                        width: 120,
                        height: 170,
                        color: Color(0xffFC4F32),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Image.asset(
                                'assets/images/hamburgesacoca.png',
                                //  colorBlendMode: BlendMode.color,
                                width: double.infinity,
                                height: 80,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                'Rapida',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text('150 Lugares',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            )
                          ],
                        ),
                      ),
                    ), //1
                    Card(
                      elevation: 10,
                      child: Container(
                        width: 120,
                        height: 170,
                        color: Color(0xff675CE8),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Image.asset(
                                'assets/images/Vector(3).png',
                                //  colorBlendMode: BlendMode.color,
                                width: double.infinity,
                                height: 80,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                'Ensaladas',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text('20 Lugares',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            )
                          ],
                        ),
                      ),
                    ), //2
                    Card(
                      elevation: 10,
                      child: Container(
                        width: 120,
                        height: 170,
                        color: Color(0xff239F55),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Image.asset(
                                'assets/images/verde.png',
                                //  colorBlendMode: BlendMode.color,
                                width: double.infinity,
                                height: 80,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                'Postres',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text('43 Lugares',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            )
                          ],
                        ),
                      ),
                    ), //3
                    Card(
                      elevation: 10,
                      child: Container(
                        width: 120,
                        height: 170,
                        color: Color(0xffF6A03A),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Image.asset(
                                'assets/images/pez.png',
                                //  colorBlendMode: BlendMode.color,
                                width: double.infinity,
                                height: 80,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                'Mariscos',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text('71 Lugares',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            )
                          ],
                        ),
                      ),
                    ) //4
                  ],
                ),
              ),
              Row(
                //Recomendados
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 15, 0, 8),
                    child: Text(
                      'Recomendados',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
              Container(
                //Recomendados
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      elevation: 10,
                      child: Container(
                          width: 180,
                          height: 200,
                          color: Colors.blue,
                          child: Card(
                            child: Container(
                              width: 180,
                              height: 200,
                              color: Colors.blue,
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(2, 0, 2, 0),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/comjapan.png',
                                        //  colorBlendMode: BlendMode.color,
                                        width: double.infinity,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            'Sushi Grill',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: "Poppins-Bold",
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(2, 5, 0, 5),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                                'Sushi, Pezcado fresco, Ramen, Ensaladas'),
                                            flex: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Row(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 30,
                                        ),
                                      ),
                                    ]),
                                  )
                                ],
                              ),
                            ),
                            elevation: 10,
                          )),
                    ),
                    Card(
                      elevation: 10,
                      child: Container(
                          width: 180,
                          height: 230,
                          color: Colors.blue,
                          child: Card(
                            child: Container(
                              width: 180,
                              height: 200,
                              color: Colors.blue,
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(2, 0, 2, 0),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/yucateca.png',
                                        //  colorBlendMode: BlendMode.color,
                                        width: double.infinity,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            'Boxito Lindo',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: "Poppins-Bold",
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(2, 5, 0, 5),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                                'Comida tradicional yucateca'),
                                            flex: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Row(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 30,
                                        ),
                                      ),
                                    ]),
                                  )
                                ],
                              ),
                            ),
                            elevation: 10,
                          )),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 15, 0, 8),
                    child: Text(
                      'Mas nformacion',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
