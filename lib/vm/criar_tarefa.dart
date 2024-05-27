import 'package:atividade/entidade/tarefa.dart';
import 'package:atividade/repositorio/repositorio_tarefa.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class CriarTarefa extends ChangeNotifier {
  final _repositorio = RepositorioTarefa();

  void cria(String title, String description) {
    _repositorio.insert(Tarefa(title: title, description: description));
    notifyListeners();
  }

  static ChangeNotifierProvider<CriarTarefa> criar() =>
      ChangeNotifierProvider(create: (_) => CriarTarefa());

}