

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saeapplicationmobile/ui/login.dart';
import 'app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Application All'O",
      routerConfig: router,
    );
  }
}