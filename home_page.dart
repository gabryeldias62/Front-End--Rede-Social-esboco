import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sm/routes.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        toolbarHeight: 40.0,
        title: Padding(
          padding: const EdgeInsets.all(110.0),
          child: Text(
            'I',
            style: TextStyle(
              fontFamily: 'ALIENATO.TTF',
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            elevation: 3.0,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Título do Post $index',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Conteúdo do post $index. Aqui você pode adicionar texto, imagens, vídeos, etc.',
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        color: Colors.blue,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.comment),
                        color: Colors.blue,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.share),
                        color: Colors.blue,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Meu Perfil'),
              onTap: () {
                Navigator.pushNamed(context, Routes.perfil);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts_outlined),
              title: Text('Lista de Amigos'),
              onTap: () {
                Navigator.pushNamed(context, Routes.listaAmigos);
              },
            ),
            ListTile(
              leading: Icon(Icons.chat_rounded),
              title: Text('Chat'),
              onTap: () {
                Navigator.pushNamed(context, Routes.chat);
              },
            ),
            ListTile(
              leading: Icon(Icons.all_inclusive_rounded),
              title: Text('Itens Curtidos'),
              onTap: () {
                Navigator.pushNamed(context, Routes.itensSalvos);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Fazer Logout'),
              onTap: () {
                Navigator.pushNamed(context, Routes.login);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Container(
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                color: Colors.white,
              ),
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
                color: Colors.white,
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
                color: Colors.white,
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.pushNamed(context, Routes.perfil);
                },
                color: Colors.white,
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewPostScreen(),
                    ),
                  );
                },
                color: Colors.white,
              ),
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class NewPostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Novo Post',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Publicar',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Texto do Post'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _selectImageFromGallery(context);
              },
              child: Text('Adicionar Foto'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectImageFromGallery(BuildContext context) async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      // Lógica para manipular a imagem selecionada
    } else {
      // Nenhuma imagem selecionada
    }
  }
}
