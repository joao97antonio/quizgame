import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(
            scaffoldBackgroundColor: Color.fromARGB(255, 224, 137, 8)),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 32, 30, 30),
            title: Center(child: Text("Show do Grande Milho")),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Pergunta 1 de 10"),
                Text("Pergunta 1"),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Resposta 1",
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
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Resposta 2",
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
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Resposta 3",
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
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Resposta 4",
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
              ],
            ),
          ),
        ));
    ;
  }
}
