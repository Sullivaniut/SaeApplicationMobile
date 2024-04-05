
import 'package:flutter/material.dart';

class HeaderUI extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Application All'O"),
      backgroundColor: Colors.blue,
      centerTitle: true,
    );
  }
}