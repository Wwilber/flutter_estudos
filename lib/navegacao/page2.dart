import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: // CENTRALIZA A COLUNA(Column) NA HORIZONTAL(Center):
      Center(
        child: Column(
          // CENTRALIZA OS FILHOS DA COLUNA NA VERTICAL:
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CRIA UM BOTÃO PARA NAVEGAR PARA A PAGE 3:
            ElevatedButton(
              onPressed: () {
                // NAVEGA PARA A PAGE 3 USANDO O MÉTODO PUSH DO NAVIGATOR:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    // DEFINE O NOME DA ROTA PARA A PAGE 3:
                    settings: RouteSettings(name: 'page3'),
                    builder: (context) => Page3(),
                  ),
                );
              },
              // NOME DO BOTÃO
              child: Text('Page3 via PAGE-VIA PUSH'),
              // COR DO BOTÃO:
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                // ESTILO DO BOTÃO(QUADRADO OU REDONDO):
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // FECHA A PAGE 2  COM O POP:
                Navigator.of(context).pop();
              },
              // NOME DO BOTÃO
              child: Text('feha page - POP'),
              // COR DO BOTÃO:
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
                // ESTILO DO BOTÃO(QUADRADO OU REDONDO):
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Page3 via NAMED'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
