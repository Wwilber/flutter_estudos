import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAGE 3', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: // CENTRALIZA A COLUNA(Column) NA HORIZONTAL(Center):
      Center(
        child: Column(
          // CENTRALIZA OS FILHOS DA COLUNA NA VERTICAL:
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page4'),
                    builder: (context) => Page4(),
                  ),
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
