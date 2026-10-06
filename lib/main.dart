import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imagens Aleatórias',
      home: const ImagePage(),
    );
  }
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int imagem1 = 1;
  int imagem2 = 2;

  void trocarImagem1() {
    setState(() {
      imagem1 = Random().nextInt(1000);
    });
  }

  void trocarImagem2() {
    setState(() {
      imagem2 = Random().nextInt(1000);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagens Aleatórias'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: trocarImagem1,
            child: Image.network(
              'https://picsum.photos/250?random=$imagem1',
              width: 550,
              height: 550,
            ),
          ),

          const SizedBox(width: 20),

          GestureDetector(
            onTap: trocarImagem2,
            child: Image.network(
              'https://picsum.photos/250?random=$imagem2',
              width: 550,
              height: 550,
            ),
          ),
        ],
      ),
    );
  }
}