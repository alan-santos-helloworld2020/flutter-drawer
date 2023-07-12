import 'package:app_drawer/menu/menu.dart';
import 'package:flutter/material.dart';
import '../cadastro/cadastro.dart';
import '../login/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        appBar: AppBar(centerTitle: true, title: const Text("Home")),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Home")],
            )
          ],
        ),
      ),
    );
  }
}
