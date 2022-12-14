import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int nota;
  final void Function() quandoreiniciarQuestionario;

  Resultado(this.nota, this.quandoreiniciarQuestionario);

  /// Give a message if the grade its:
  /// - less then 8
  /// - less then 12
  /// - less then 16
  /// - greater then 16
  String get fraseResultado {
    if (nota < 8) {
      return 'Parabéns';
    } else if (nota < 12) {
      return 'Você é bom!';
    } else if (nota < 16) {
      return 'Impressionate';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(fraseResultado, style: TextStyle(fontSize: 28)),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          onPressed: quandoreiniciarQuestionario,
          child: const Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 21),
          ),
        )
      ],
    );
  }
}
