import 'package:flutter/material.dart';

void main() {
  // tudo o que esta aqui roda na aplicação
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // o column diz que os filhos tem que estar um em cima do outro
        home: Container(
          color: Colors.orange,
          child: Column(
              // espaço entre eles seja equilibrado
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(color: Colors.red, width: 100, height: 100),
                    Container(color: Colors.blue, width: 50, height: 50)
                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(color: Colors.blue, width: 100, height: 100),
                    Container(color: Colors.red, width: 50, height: 50)
                  ],
                ),
                // verticalmente depois dos stacks
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(color: Colors.cyan, width: 50, height: 50),
                    Container(color: Colors.pinkAccent, width: 50, height: 50),
                    Container(color: Colors.purple, width: 50, height: 50)
                  ],
                ),
                Container(
                    color: Colors.amber,
                    height: 30,
                    width: 300,
                    // colocar estilo no texto
                    child: Text(
                      'Teste da escritaaaa',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ElevatedButton(onPressed: () {
                    print('Você apertou o botão');
                    // texto do botão 
                  }, child: Text('Aperte o botão!!!!'))
              ]),
        ));
  }
}
