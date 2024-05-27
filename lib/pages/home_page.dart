import 'package:atividade/components/tarefa_list_item.dart';
import 'package:atividade/vm/lista_tarefa.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<ListaTarefa>(context);
    final tarefas = vm.select();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => TarefaListItem(tarefa: tarefas[index]),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: tarefas.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
    );
  }
}
