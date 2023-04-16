import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(
            scaffoldBackgroundColor: Color.fromARGB(255, 246, 245, 243)),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 32, 30, 30),
            title: Center(child: Text("Show do Grande Milho")),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlutterLogo(
                  size: 300,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "Quiz");
                  },
                  child: Text(
                    "Wanna play a game?",
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
  }
}
