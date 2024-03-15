import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:saeapplicationmobile/main.dart';
import 'header.dart';
import 'package:saeapplicationmobile/models/user_bd.dart';

class RegisterUI extends StatefulWidget {
  const RegisterUI({super.key});
  @override
  State<StatefulWidget> createState() => _RegisterUIState();
}

class _RegisterUIState extends State<RegisterUI> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final UserBD userBD = UserBD();

  Future<void> signIn() async {
    final response = await base.auth.signInWithPassword(
      email: loginController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HeaderUI(),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: TextField(
                          controller: firstNameController,
                          decoration: const InputDecoration(
                              labelText: 'Prénom',
                              hintText: 'Entrez votre prénom',
                              icon: Icon(Icons.person)
                          ),
                        ),
                      ),
                      Flexible(
                        child: TextField(
                            controller: lastNameController,
                            decoration: const InputDecoration(
                                labelText: 'Nom',
                                hintText: 'Entrez votre nom',
                                icon: Icon(Icons.person)
                            )
                        ),
                      ),
                    ]
                ),
                Flexible(
                  child: TextField(
                    controller: loginController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Entrez votre email',
                      icon: Icon(Icons.email),
                    ),
                  ),
                ),
                Flexible(
                  child: TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Entrez votre mot de passe',
                      icon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                ),
                Flexible(
                  child: TextField(
                    controller: confirmPasswordController,
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'Confirmer votre mot de passe',
                      icon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        await signIn();
                      },
                      child: const Text('Valider inscription'),
                    ),
                    ElevatedButton(
                      onPressed: () => context.go('/'),
                      child: const Text('Retour' ),
                    ),
                  ],
                )
              ],
            )
        )
    );
  }
}