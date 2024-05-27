import 'package:flutter/material.dart';

class NovaTarefaPage extends StatelessWidget {
  const NovaTarefaPage({super.key});

  @override
  Widget build(BuildContext context) {

    final tituloController = TextEditingController();
    final descricaoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Nova Tarefa"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            textField("Titulo", tituloController),
            textField("Descrição", descricaoController),
          ],

        ),
      ),

    );
  }

  Widget textField(String label, TextEditingController controller) => TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label
    ),
  );
}