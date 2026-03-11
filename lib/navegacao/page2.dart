import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  static final String routeName = '/page2';
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.brown,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: // CENTRALIZA A COLUNA(Column) NA HORIZONTAL(Center):
      Center(
        child: Column(
          // CENTRALIZA OS FILHOS DA COLUNA NA VERTICAL:
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // BOTÃO DE NAVEGAÇÃO VIA CLASSE DA PÁGINA:
            ElevatedButton(
              onPressed: () {
                // NAVEGAÇÃO PELO MÉTODO PUSH QUE EMPILHA UMA PÁGINA EM CIMA DA OUTRA:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    // DEFINE O NOME DA ROTA PARA A PAGE 3:
                    settings: RouteSettings(name: 'page3'),
                    builder: (context) => Page3(),
                  ),
                );
              },
              // NOME DO BOTÃO
              child: Text('Page 3 via PAGE - PUSH'),
              // FORMATA O BOTÃO:
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
                // NAVEGAÇÃO PELO MÉTODO POP: PECHA A PÁGINA ATUAL
                Navigator.of(context).pop();
              },
              child: Text('FECHA A PÁGINA "Page 2" - POP'),
              // FORMATA O BOTÃO:
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                // ESTILO DO BOTÃO(QUADRADO OU REDONDO):
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            // NAVEGAÇÃO UTILIZANDO O MÉTODO: pushRep
            ElevatedButton(
              onPressed: () {
                // NAVEGAÇÃO PELO MÉTODO pushReplacement: SUBSTITUI A PÁGINA ATUAL PELA NOVA PÁGINA:
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page3'),
                    builder: (context) => Page3(),
                  ),
                );
              },
              child: Text('Page 3 via PAGE - pushReplacement'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            ElevatedButton(
              // BOTÃO DE NAVEGAÇÃO VIA NOME DA ROTA:
              onPressed: () {
                Navigator.of(context).pushNamed('/page3');
              },
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
