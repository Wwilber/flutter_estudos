import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/home_page.dart' as navegacao;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const navegacao.HomePage(),
    );
  }
}
