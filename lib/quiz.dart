import 'package:flutter/material.dart';
int acertos = 0;
int pergunta = 1;
void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("Aviso"),
        content: new Text("Resposta Errada"),
        actions: <Widget>[
          new ElevatedButton(
            child: new Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

void fim(int a, int b, BuildContext context) {
  if (a == b) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Fim"),
            content: new Text("Final de Jogo"),
            actions: <Widget>[
              new ElevatedButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}

void resposta(int a, int b, int c, BuildContext context) {
  if (a == b) {
    if (pergunta < c) pergunta++;
  } else
    _showDialog(context);
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int respondido = 0;

  @override
  Widget build(BuildContext context) {
    List quiz = [
      {
        "pergunta": "Quem desenvolveu a Linguagem C?",
        "respostas": [
          "Bjarne Stroustrup",
          "Dennis Ritchie",
          "James Gosling",
          "Guido van Rossum",
        ],
        "correta": 2,
      },
    ];

    quiz.add(
      {
        "pergunta": "Quem desenvolveu o Kernel Linux?",
        "respostas": [
          "Eric S. Raymond",
          "Richard Stallman",
          "Dennis Ritchie",
          "Linus Torvalds",
        ],
        "correta": 4,
      },
    );
    quiz.add(
      {
        "pergunta": "O que significa Risc",
        "respostas": [
          "Reduced Instruction Set Computer",
          "Random Instruction Set Computer",
          "RAM In Security Computer",
          "Rear Instruction State Compare",
        ],
        "correta": 1,
      },
    );
    quiz.add(
      {
        "pergunta": "O que significa Cisc",
        "respostas": [
          "Complex Instruction Set Computer",
          "Coded Instruction Set Computer",
          "Camarada In Some Context",
          "Cloud integrated Security Computer",
        ],
        "correta": 1,
      },
    );
    quiz.add(
      {
        "pergunta": "Quem fundou a Apple?",
        "respostas": [
          "Bill Gates e Paul Allen",
          "Steve Jobs e Bill Gates",
          "Steve Jobs e Steve Wozniak",
          " Steve Wozniak e Paul Allen",
        ],
        "correta": 3,
      },
    );
    quiz.add(
      {
        "pergunta": "Em que ano foi fundado o Google?",
        "respostas": [
          "2004",
          "1998",
          "1996",
          "2002",
        ],
        "correta": 2,
      },
    );
    quiz.add(
      {
        "pergunta": "Quem escreveu a catedral e o bazar?",
        "respostas": [
          "Linus Torvalds",
          "Eric S. Raymond",
          "Richard Stallman",
          "Dennis Ritchie",
        ],
        "correta": 2,
      },
    );
    quiz.add(
      {
        "pergunta": "Em que ano foi lançada a wikipedia?",
        "respostas": [
          "2002",
          "1999",
          "2000",
          "2001",
        ],
        "correta": 4,
      },
    );
    quiz.add(
      {
        "pergunta": "Qual o range da base hexadecimal?",
        "respostas": [
          "-8 a 7",
          "0-15",
          "0-9 e A-F",
          "1-16",
        ],
        "correta": 3,
      },
    );
    quiz.add(
      {
        "pergunta": "Quantos bits tem em 1 megabyte?",
        "respostas": [
          "1.048.000",
          "1.048.576",
          "1.024.000",
          "1.000.000",
        ],
        "correta": 4,
      },
    );
    int tam = quiz.length;
    return MaterialApp(
      theme: new ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 248, 248, 248)),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 32, 30, 30),
          title: Center(child: Text("Show do Grande Milho")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Text("Pergunta $pergunta de $tam",
                      style: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ))),
              Text("Pergunta: " + quiz[pergunta - 1]["pergunta"],
                  style: TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(255, 0, 0, 0),
                  )),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    respondido = 1;
                    fim(pergunta, quiz.length, context);
                    setState(() {
                      resposta(respondido, quiz[pergunta - 1]["correta"],
                          quiz.length, context);
                    });
                  },
                  child: Text(
                    quiz[pergunta - 1]["respostas"][0],
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    respondido = 2;
                    fim(pergunta, quiz.length, context);
                    setState(() {
                      resposta(respondido, quiz[pergunta - 1]["correta"],
                          quiz.length, context);
                    });
                  },
                  child: Text(
                    quiz[pergunta - 1]["respostas"][1],
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    respondido = 3;
                    fim(pergunta, quiz.length, context);
                    setState(() {
                      resposta(respondido, quiz[pergunta - 1]["correta"],
                          quiz.length, context);
                    });
                  },
                  child: Text(
                    quiz[pergunta - 1]["respostas"][2],
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    respondido = 4;
                    fim(pergunta, quiz.length, context);
                    setState(() {
                      resposta(respondido, quiz[pergunta - 1]["correta"],
                          quiz.length, context);
                    });
                  },
                  child: Text(
                    quiz[pergunta - 1]["respostas"][3],
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
    );
    ;
  }
}
