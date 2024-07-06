import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatPage(),
    );
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chat',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State {
  final List<String> _members = [
    'Membro 1',
    'Membro 2',
    'Membro 3',
    'Membro 4',
    'Membro 5',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _members.length,
      itemBuilder: (context, index) {
        final member = _members[index];
        return ListTile(
          title: Text(member),
          onTap: () {
            _startChatWithMember(context, member);
          },
        );
      },
    );
  }

  void _startChatWithMember(BuildContext context, String member) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Iniciar chat com $member'),
          content: Text('Aqui você pode iniciar um chat com $member.'),
          actions: <Widget>[
            TextButton(
              // Certifique-se de que o FlatButton esteja dentro de actions
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Fechar'),
            ),
          ],
        );
      },
    );
  }
}
