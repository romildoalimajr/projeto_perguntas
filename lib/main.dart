import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita? ',
      'respostas': [
        {'texto': 'Azul', 'pontuação': 10},
        {'texto': 'Vermelho', 'pontuação': 7},
        {'texto': 'Preto', 'pontuação': 5},
        {'texto': 'Amarelo', 'pontuação': 3},
        {'texto': 'Rosa', 'pontuação': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'pontuação': 5},
        {'texto': 'Gato', 'pontuação': 3},
        {'texto': 'Cavalo', 'pontuação': 7},
        {'texto': 'Lobo', 'pontuação': 9},
        {'texto': 'Leão', 'pontuação': 10},
      ],
    },
    {
      'texto': 'Qual e a sua liguagem de programação favorita?',
      'respostas': [
        {'texto': 'Dart', 'pontuação': 10},
        {'texto': 'Java', 'pontuação': 9},
        {'texto': 'C++', 'pontuação': 7},
        {'texto': 'PHP', 'pontuação': 3},
        {'texto': 'JavaScript', 'pontuação': 5},
      ],
    },
    {
      'texto': 'Qual é a sua série de TV favorita?',
      'respostas': [
        {'texto': 'The Big Bang Theory', 'pontuação': 10},
        {'texto': 'Two and Half Man', 'pontuação': 5},
        {'texto': 'The Middle', 'pontuação': 6},
        {'texto': 'The Walking Dead', 'pontuação': 9},
        {'texto': 'Chaves & Chapolin', 'pontuação': 7},
      ],
    },
    {
      'texto': 'Qual é o seu filme favorito?',
      'respostas': [
        {'texto': 'The Matrix', 'pontuação': 10},
        {'texto': 'Mission: Impossible', 'pontuação': 9},
        {'texto': 'The Vast Night', 'pontuação': 8},
        {'texto': 'Star Trek', 'pontuação': 7},
        {'texto': 'Star Wars', 'pontuação': 5},
      ],
    },
    {
      'texto': 'Qual a sua cidade favorita?',
      'respostas': [
        {'texto': 'Recife', 'pontuação': 5},
        {'texto': 'Lisboa', 'pontuação': 6},
        {'texto': 'Paris', 'pontuação': 7},
        {'texto': 'Londres', 'pontuação': 9},
        {'texto': 'New York', 'pontuação': 10},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    print(_pontuacaoTotal);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    //List<Widget> widgets = respostas.map((t) => Resposta(t, _responder)).toList();

    /*for (String textoResp in respostas) {
      print(textoResp);
      widgets.add(Resposta(textoResp, _responder));
    }*/

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(),
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
