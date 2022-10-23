import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 20) {
      return 'Parabéns!';
    } else if (pontuacao < 30) {
      return 'Você é bom!';
    } else if (pontuacao < 50) {
      return 'Impressionante!!!';
    } else {
      return 'Nivel Jedi!....';
    }
  }

  @override
  Widget build(BuildContext context) {
    String pontoFinal = pontuacao.toString();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
        Center(
          child: Text(
            pontoFinal,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        TextButton(
          child: Text(
            'Reiniciar',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            primary: Colors.white,
          ),
          onPressed: reiniciarQuestionario,
        )
      ],
    );
  }
}
