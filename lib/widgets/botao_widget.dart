import 'package:flutter/material.dart';

class BotaoWidget extends StatelessWidget {
  final String texto;
  final Function() funcao;
  const BotaoWidget({super.key, required this.texto, required this.funcao});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: funcao,
      child: Text(texto),
    );
  }
}
