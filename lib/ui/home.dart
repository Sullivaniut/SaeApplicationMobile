import 'package:flutter/material.dart';
import 'package:saeapplicationmobile/ui/header.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderUI(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to the Home Page'),
          ],
        ),
      ),
    );
  }
}