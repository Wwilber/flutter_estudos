import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PAGE 4')),
      body: // CENTRALIZA A COLUNA(Column) NA HORIZONTAL(Center):
      Center(
        child: Column(
          // CENTRALIZA OS FILHOS DA COLUNA NA VERTICAL:
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page1'),
                    builder: (context) => Page1(),
                  ),
                  // REMOVENDO ATÉ A PÁGINA 2:
                  ModalRoute.withName('page2'),
                  // REMOVENDO ATÉ A PRIMEIRA PÁGINA(HOME PAGE):
                  //(route) => route.isFirst,
                  // (route) => false => remove todas sas páginas.(usado no login).
                );
              },
              child: const Text(
                // NOME DO BOTÃO:
                'page 4 via PAGE - REPLACEMENT',
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
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
              child: const Text(
                // NOME DO BOTÃO:
                'page 4 via NAMED',
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
