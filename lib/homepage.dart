import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  String fondo = 'assets/fondopantalla.jpeg';
  int count = 0;
  int sum = 1;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          fondo,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        index == 0
            ? Scaffold(
                backgroundColor: Colors.transparent,
                body: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Text(
                        'Contador',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      '$count',
                      style: const TextStyle(
                          fontSize: 100,
                          fontFamily: 'fonts/Montserrat-Bold.ttf',
                          color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(20),
                            backgroundColor: Colors.white30,
                          ),
                          child: const Icon(
                            Icons.remove,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              count = count - sum;
                            });
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(50),
                            backgroundColor: Colors.white30,
                          ),
                          child: const Text(
                            'Limpiar',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'fonts/Montserrat-Bold.ttf',
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              count = 0;
                            });
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(20),
                            backgroundColor: Colors.white30,
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              count = count + sum;
                            });
                          },
                        ),
                      ],
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: index,
                  backgroundColor: Colors.transparent,
                  items: [
                    BottomNavigationBarItem(
                      icon: IconButton(
                        icon: const Icon(Icons.lock_clock),
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            index = 0;
                          });
                        },
                      ),
                      label: 'Contador',
                    ),
                    BottomNavigationBarItem(
                      icon: IconButton(
                        icon: const Icon(Icons.settings),
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            index = 1;
                          });
                        },
                      ),
                      label: 'Configuración',
                    ),
                  ],
                ),
              )
            : Scaffold(
                //seguno scaffold
                backgroundColor: Colors.transparent,
                body: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Text(
                        'Configuración',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Text(
                        'Cambiar fondo',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              fondo = 'assets/fondopantalla.jpeg';
                            });
                          },
                          child: const SizedBox(
                            width: 80,
                            height: 80,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/fondopantalla.jpeg'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              fondo = 'assets/fondopantalla2.jpg';
                            });
                          },
                          child: const SizedBox(
                            width: 80,
                            height: 80,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/fondopantalla2.jpg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Text(
                        'Incrementador',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(10),
                            backgroundColor: Colors.white30,
                          ),
                          child: const Text(
                            '1',
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: () {
                            setState(() {
                              sum = 1;
                            });
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(10),
                            backgroundColor: Colors.white30,
                          ),
                          child: const Text(
                            '5',
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: () {
                            setState(() {
                              sum = 5;
                            });
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(10),
                            backgroundColor: Colors.white30,
                          ),
                          child: const Text(
                            '10',
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: () {
                            setState(() {
                              sum = 10;
                            });
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(10),
                            backgroundColor: Colors.white30,
                          ),
                          child: const Text(
                            '20',
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: () {
                            setState(() {
                              sum = 20;
                            });
                          },
                        ),
                      ],
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: index,
                  backgroundColor: Colors.transparent,
                  items: [
                    BottomNavigationBarItem(
                      icon: IconButton(
                        icon: const Icon(Icons.lock_clock),
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            index = 0;
                          });
                        },
                      ),
                      label: 'Contador',
                    ),
                    BottomNavigationBarItem(
                      icon: IconButton(
                        icon: const Icon(Icons.settings),
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            index = 1;
                          });
                        },
                      ),
                      label: 'Configuración',
                    ),
                  ],
                ),
              )
      ],
    );
  }
}
