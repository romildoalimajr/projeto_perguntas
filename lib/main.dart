import 'package:flutter/material.dart';
import './questao.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita? ',
      'Qual é o seu animal favorito?',
      'Qual e a sua liguagem de programação favorita?',
      'Qual é a sua série de TV favorita?',
      'Qual é o seu filme favorito?',
      'Qual a sua cidade favorita?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(child: Text('Resposta 01'), onPressed: _responder),
            ElevatedButton(child: Text('Resposta 02'), onPressed: _responder),
            ElevatedButton(child: Text('Resposta 03'), onPressed: _responder),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
