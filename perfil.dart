import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Perfil',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar do usuário
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage(
                  'assets/avatar.jpg'), // Substitua pelo caminho da imagem do avatar
            ),
            SizedBox(height: 20.0),
            // Nome do usuário
            Text(
              'Nome do Usuário',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            // Informações do perfil (exemplo)
            Text(
              'Cidade, Estado',
              style: TextStyle(fontSize: 18.0, color: Colors.grey),
            ),
            SizedBox(height: 20.0),
            // Campo de texto para a bio
            Text(
              'Bio:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Adicione uma descrição sobre você...',
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
            SizedBox(height: 20.0),
            // Seção de posts do usuário
            Text(
              'Posts do Usuário',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            // Lista de posts (exemplo)
            // Aqui você pode adicionar um ListView.builder para exibir os posts
            // Cada item do ListView.builder seria um post feito pelo usuário
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Lógica para editar o perfil
        },
        child: Icon(Icons.edit),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
