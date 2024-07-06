import 'package:flutter/material.dart';

class ListaAmigosPage extends StatefulWidget {
  @override
  _ListaAmigosPageState createState() => _ListaAmigosPageState();
}

class _ListaAmigosPageState extends State<ListaAmigosPage> {
  List<String> amigos = [
    'João',
    'Maria',
    'Pedro',
    'Ana',
    'Carlos',
    'Laura',
    'Mateus',
    'Juliana',
  ];

  List<String> amigosSelecionados = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de Amigos',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: amigos.length,
        itemBuilder: (context, index) {
          final amigo = amigos[index];
          final bool isSelected = amigosSelecionados.contains(amigo);
          return ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.account_circle),
            ), // Adiciona um ícone de contato
            title: Text(amigo),
            trailing: IconButton(
              icon: isSelected ? Icon(Icons.remove) : Icon(Icons.add),
              onPressed: () {
                setState(() {
                  if (isSelected) {
                    amigosSelecionados.remove(amigo);
                  } else {
                    amigosSelecionados.add(amigo);
                  }
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implementar a lógica para desfazer amizade
          setState(() {
            amigosSelecionados.clear();
          });
        },
        child: Icon(Icons.delete),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
