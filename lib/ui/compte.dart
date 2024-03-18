import 'package:flutter/material.dart';
import 'package:saeapplicationmobile/ui/bottomtoolsbar.dart';
import 'package:saeapplicationmobile/ui/header.dart';



class CompteUI extends StatefulWidget {
  const CompteUI({Key? key}) : super(key: key);
  @override
  _CompteUIState createState() => _CompteUIState();
}

class _CompteUIState extends State<CompteUI> {
  int _currentIndex = 4;

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