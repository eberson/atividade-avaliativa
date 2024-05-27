import 'package:atividade/entidade/tarefa.dart';
import 'package:atividade/repositorio/repositorio_tarefa.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class ListaTarefa extends ChangeNotifier {
  final _repositorio = RepositorioTarefa();

  List<Tarefa> select() => _repositorio.select();
  Tarefa? selectById(String id) => _repositorio.selectById(id);

  static ChangeNotifierProvider<ListaTarefa> criar() =>
      ChangeNotifierProvider(create: (_) => ListaTarefa());
}
