import 'package:flutter/material.dart';

import '../cadastro/cadastro.dart';
import '../home/home.dart';
import '../login/login.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text("Admin paulo"),
            accountEmail: const Text("adminpaulo@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset("assets/images/logo.png")),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home-Page"),
            onTap: () {
              print("GO HOME");
              // Navigator.pushNamed(context, "/home");
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Cadastro-Page"),
            onTap: () {
              print("GO CADASTRO");
              // Navigator.pushNamed(context, "/cadastro");
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CadastroPage()));
            },
          ),
        ],
      ),
    ));
  }
}
