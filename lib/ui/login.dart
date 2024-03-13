import 'package:flutter/material.dart';
import 'package:saeapplicationmobile/main.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});
  @override
  State<StatefulWidget> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Future<void> signIn() async {
    final response = await base.auth.signInWithPassword(
      email : loginController.text,
      password : passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: loginController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Entrez votre email',
                  icon: Icon(Icons.person),
                ),
              ),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Entrez votre mot de passe',
                  icon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () async {
                   await signIn();
                },
                child: const Text('Connexion'),
              ),
            ],
          ),
        ));
}
}