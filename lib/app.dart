import 'package:atividade/pages/home_page.dart';
import 'package:atividade/util/tema.dart';
import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Atividade Avaliativa",
      theme: tema(),
      initialRoute: "/",
      routes: {
        "/": (_) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}