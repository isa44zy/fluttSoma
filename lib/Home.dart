import 'package:somativa/cadastroprodutos.dart';
import 'package:somativa/cadastrousuario.dart';
import 'package:somativa/contador.dart';
import 'package:flutter/material.dart';
import 'telaimc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.add_business_sharp,
              size: 120.0,
              color: Colors.blueGrey,
            ),
            Text(
              "Aplicação Principal",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                      child: const Text("IMC"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Telaimc(),
                            ));
                      }),
                  ElevatedButton(
                      child: const Text("Contador"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Contador()),
                        );
                      }),
                  ElevatedButton(
                      child: const Text("Cadastro Usuario"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Cadastrousuario()),
                        );
                      }),
                  ElevatedButton(
                      child: const Text("Cadastro de produtos"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Cadastroprodutos()),
                        );
                      }),
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}
