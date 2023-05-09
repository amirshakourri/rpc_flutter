import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({super.key});

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 1;
  int buttom = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "vb"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 3,
          title: Text("سنگ    کاغذ    قیچی"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(
                image: AssetImage("images/$top.png"),
                height: 100.0,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      top = Random().nextInt(3) + 1; //0-2-> 1 3
                      buttom = Random().nextInt(3) + 1;
                    });
                  },
                  child: Text(
                    "شروع بازی",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  )),
              Image(
                image: AssetImage("images/$buttom.png"),
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    int? top = 1;
    int? buttom = 2;
    return MaterialApp(
      theme: ThemeData(fontFamily: "vb"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 3,
          title: Text("سنگ    کاغذ    قیچی"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(
                image: AssetImage("images/1.png"),
                height: 100.0,
              ),
              TextButton(
                  onPressed: () {
                    top = 1;
                    buttom = 2;
                  },
                  child: Text(
                    "شروع بازی",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  )),
              Image(
                image: AssetImage("images/1.png"),
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
