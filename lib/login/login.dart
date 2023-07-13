import 'package:flutter/material.dart';

import '../cadastro/cadastro.dart';
import '../home/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text("Login")),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text("Login")],
              ),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 15.00),
                    prefixIcon: Icon(Icons.email)),
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 15.00),
                    prefixIcon: Icon(Icons.password)),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                            foregroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 255, 255, 255))),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: Text("Login"),
                            ),
                            Icon(Icons.login)
                          ],
                        ),
                        onPressed: () {
                          if (emailController.text == "admin@gmail.com" &&
                              passwordController.text == "admin123") {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomePage()));
                            emailController.clear();
                            passwordController.clear();
                          } else {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialog(
                                    icon: Icon(Icons.warning),
                                    content: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text("usuário inválido"),
                                      ],
                                    ),
                                  );
                                });
                          }
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
