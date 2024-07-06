import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Itens Salvos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ItensSalvosPage(),
    );
  }
}

class ItensSalvosPage extends StatelessWidget {
  final List<String> savedItems = [
    'Post 1',
    'Post 2',
    'Post 3',
    'Post 4',
    'Post 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Itens Curtidos',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: savedItems.length,
        itemBuilder: (context, index) {
          final item = savedItems[index];
          return ListTile(
            title: Text(item),
            onTap: () {
              // Implemente aqui a lógica para abrir o post selecionado
              print('Post selecionado: $item');
            },
          );
        },
      ),
    );
  }
}
