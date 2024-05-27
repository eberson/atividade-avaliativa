import 'package:atividade/app.dart';
import 'package:atividade/vm/criar_tarefa.dart';
import 'package:atividade/vm/lista_tarefa.dart';
import 'package:atividade/vm/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Login.criar(),
        ListaTarefa.criar(),
        CriarTarefa.criar(),
      ],
      child: const Aplicacao(),
    );
  }
}
