import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text("Alan Paulo"),
            accountEmail: const Text("alanprotesto@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset("assets/images/logo.png")),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home-Page"),
            onTap: () {
              print("GO HOME");
              Navigator.pushNamed(context, "/home");
            },
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Cadastro-Page"),
            onTap: () {
              print("GO CADASTRO");
              Navigator.pushNamed(context, "/cadastro");
            },
          ),
        ],
      ),
    );
  }
}
