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
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Nome: ${widget.name}\nTipo: ${widget.type} \nURL: ${widget.url}", 
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, wordSpacing: 1.5, height: 2)),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: BotaoWidget(
              funcao: () {
                Navigator.pop(
                  context,
                );
              },
              texto: 'Voltar',
            )
          )
        ],
      ),
    ));
  }
}
