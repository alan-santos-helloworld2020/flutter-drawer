import 'package:app_drawer/cadastro/cadastro.dart';
import 'package:app_drawer/home/home.dart';
import 'package:app_drawer/login/login.dart';
import 'package:app_drawer/menu/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/login": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
        "/cadastro": (context) => const CadastroPage(),
      },
      home: Scaffold(
        drawer: const MenuDrawer(),        
        appBar: AppBar(
          centerTitle: true,
          title:const Text("onload",style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255)
          ),),
        ),
      ),
    );
  }
}
