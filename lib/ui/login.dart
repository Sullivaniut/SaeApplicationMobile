import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'header.dart';
import 'package:saeapplicationmobile/models/user_bd.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});
  @override
  State<StatefulWidget> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final UserBD userBD = UserBD();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HeaderUI(),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      bool connexion = await userBD.signIn(loginController.text, passwordController.text);
                      if(connexion){
                        context.go('/home');
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Failed to sign in')),
                        );
                      }
                      }
                    ,
                    child: const Text('Connexion'),
                  ),
                  ElevatedButton(
                    onPressed: () => context.go('/register'),
                    child: const Text('S\'inscrire' ),
                  ),
                ],
              )
            ],
          ),
        ));
}
}