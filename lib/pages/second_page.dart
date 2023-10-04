import 'package:app_pokemon/widgets/botao_widget.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String name, type, url;
  const SecondPage(
      {super.key, required this.name, required this.type, required this.url});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              "Nome: ${widget.name}\nTipo: ${widget.type} \nURL: ${widget.url}"),
          BotaoWidget(
            funcao: () {
              Navigator.pop(
                context,
              );
            },
            texto: 'Voltar',
          )
        ],
      ),
    ));
  }
}
