import 'package:flutter/material.dart';
import 'package:sm/login_page.dart' as LoginPage;
import 'package:sm/home_page.dart';
import 'package:sm/cadastro.dart';
import 'package:sm/rec_senha.dart';
import 'package:sm/perfil.dart';
import 'package:sm/listaamigos.dart';
import 'package:sm/chat.dart';
import 'package:sm/itens_salvos.dart';

class Routes {
  static final String login = '/';
  static final String home = '/home';
  static final String cadastro = '/cadastro';
  static final String recuperarSenha = '/recuperar-senha';
  static final String perfil = '/perfil';
  static final String listaAmigos = '/listaamigos';
  static final String chat = '/chat';
  static final String itensSalvos = '/itenssalvos';

  static final Map<String, WidgetBuilder> routes = {
    login: (context) => LoginPage.LoginPage(),
    home: (context) => HomePage(),
    perfil: (context) => PerfilPage(),
    cadastro: (context) => CadastroPage(),
    recuperarSenha: (context) => RecuperarSenhaPage(),
    listaAmigos: (context) => ListaAmigosPage(),
    chat: (context) => ChatPage(),
    itensSalvos: (context) => ItensSalvosPage(),
  };
}
