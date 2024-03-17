import 'package:flutter/material.dart';
import 'package:saeapplicationmobile/ui/header.dart';
import 'package:saeapplicationmobile/models/user_bd.dart';


class HomeUI extends StatelessWidget {
  HomeUI({super.key});
  var user = UserBD();
  @override
  Widget build(BuildContext context) {
    String nomcomplet = '${user.getName()}';
    print(nomcomplet);
    return Scaffold(
      appBar: HeaderUI(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Bienvenue $nomcomplet !'),
            Text('Welcome to the Home Page'),
          ],
        ),
      ),
    );
  }
}