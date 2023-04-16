import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({Key? key, required this.acertos}) : super(key: key);
  final int acertos;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(
            scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255)),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 32, 30, 30),
            title: Center(child: Text("Show do Grande Milho")),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Resultado: ",
                      style: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 0, 0, 0),
                      )),
                  Text("Voce Acertou: $acertos de 10 perguntas ",
                      style: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 0, 0, 0),
                      )),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Wanna play again?",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20),
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
