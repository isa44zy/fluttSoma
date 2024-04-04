import 'Home.dart';
import 'package:somativa/telaimc.dart';
import 'package:flutter/material.dart';
import 'cadastroprodutos.dart';
import 'cadastrousuario.dart';
import 'contador.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'somativa',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/segunda': (context) => const Telaimc(),
        '/terceira': (context) => const Contador(),
        '/quarta': (context) => const Cadastrousuario(),
        '/quinta': (context) => const Cadastroprodutos(),
      },
    );
  }
}
