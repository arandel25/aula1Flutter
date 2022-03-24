import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Piadas do dia",
      home: home(),
    ),
  );
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  var _textoPiada = "Piada do dia";
  var listaDePiadas = [
    "O que o pato disse para a pata?\nR: Vem Quá!",
    "Porque o menino estava falando ao telefone deitado?\nR: Para não",
    "Qual é a fórmula da água benta?\nR: H Deus O",
    "O que o pontnho falou para a mãe?\nR: Oi, mãe!"
  ];
  Random n = Random();
  void novaPiada() {
    int numero = n.nextInt(listaDePiadas.length);
    setState(() {
      _textoPiada = listaDePiadas[numero];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Imagens"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "images/imagem1.jpg",
              fit: BoxFit.fitHeight,
            ),
            Text(_textoPiada, style: TextStyle(fontSize: 20)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: novaPiada,
                child: const Text("Próxima !!!"))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        child: Text(
          "Criado por Felipe",
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
