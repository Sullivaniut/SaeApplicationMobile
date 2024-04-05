import 'package:flutter/material.dart';
import 'package:saeapplicationmobile/main.dart';
import 'package:saeapplicationmobile/ui/header.dart';
import 'bottomtoolsbar.dart';



class HomeUI extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeUI> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderUI(),
      body: Center(
        child: Text('Selected Index: $_currentIndex'),
      ),
      bottomNavigationBar: BottomToolsBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
