import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/home_page.dart';
import 'package:flutter_maonamassa/navegacao/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4', style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.orange,
      ),
      body: // CENTRALIZA A COLUNA(Column) NA HORIZONTAL(Center):
      Center(
        child: Column(
          // CENTRALIZA OS FILHOS DA COLUNA NA VERTICAL:
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // NAVEGAÇÃO PELO MÉTODO PUSH QUE EMPILHA UMA PÁGINA EM CIMA DA OUTRA:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    // DEFINE O NOME DA ROTA PARA A HOME PAGE:
                    settings: RouteSettings(name: 'Home Page'),
                    builder: (context) => HomePage(),
                  ),
                );
              },
              // NOME DO BOTÃO
              child: Text('Home Page via PAGE - PUSH'),
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
              child: Text('FECHA A PÁGINA "Page 4" - POP'),
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
            // NAVEGAÇÃO UTILIZANDO O MÉTODO: pushReplacement:
            ElevatedButton(
              onPressed: () {
                // NAVEGAÇÃO PELO MÉTODO pushReplacement: SUBSTITUI A PÁGINA ATUAL PELA NOVA PÁGINA:
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'home page'),
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Text('Home Page via PAGE - pushReplacement'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
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
                'page 4 via PAGE - pushAndRemoveUntil',
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
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/page1',
                  ModalRoute.withName('/page2'),
                );
              },
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
