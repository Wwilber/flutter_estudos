import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body:
          // CENTRALIZA A COLUNA(Column) NA HORIZONTAL(Center):
          Center(
            child: Column(
              // CENTRALIZA OS FILHOS DA COLUNA NA VERTICAL:
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // push: NAVEGAÇÃO PELO MÉTODO QUE EMPILHA UMA PÁGINA EM CIMA DA OUTRA:
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        // DEFINE O NOME DA ROTA PARA A PAGE 3:
                        settings: RouteSettings(name: 'page2'),
                        builder: (context) => Page2(),
                      ),
                    );
                  },
                  child: Text('Page 2 via PAGE - PUSH'),
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
                  child: Text('FECHA A PÁGINA "Home Page" - POP'),
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

                // BOTÃO DE NAVEGAÇÃO VIA NOME DA ROTA:
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Page2.routeName);
                  },
                  child: Text('Page2 via NAMED'),
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
