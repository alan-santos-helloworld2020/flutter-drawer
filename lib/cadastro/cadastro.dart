import 'package:app_drawer/menu/menu.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';
import '../login/login.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/login": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
        "/cadastro": (context) => const CadastroPage(),
      },
      home: Scaffold(
        drawer: const MenuDrawer(),
        appBar: AppBar(centerTitle: true, title: const Text("Cadastro"),),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Cadastro")],
            )
          ],
        ),
      ),
    );
  }
}
