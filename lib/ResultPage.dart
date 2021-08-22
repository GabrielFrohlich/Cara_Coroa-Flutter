import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final int result;
  ResultPage(this.result);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  var images = [
    'assets/images/moeda_cara.png',
    'assets/images/moeda_coroa.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              Image.asset(images[widget.result]),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('assets/images/botao_voltar.png'))
            ])));
  }
}
