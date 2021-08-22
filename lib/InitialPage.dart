import 'package:cara_coroa/ResultPage.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  void _exibirResultado() {
    int resultado = Random().nextInt(2);

    print("resultado = $resultado");

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ResultPage(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/logo.png'),
            GestureDetector(
                child: Image.asset('assets/images/botao_jogar.png'),
                onTap: _exibirResultado)
          ],
        )));
  }
}
