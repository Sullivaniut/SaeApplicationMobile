import 'package:flutter/material.dart';
import 'package:saeapplicationmobile/ui/bottomtoolsbar.dart';
import 'package:saeapplicationmobile/ui/header.dart';


class PretsUI extends StatefulWidget{
  const PretsUI({Key? key}) : super(key: key);
  @override
  _PretsUIState createState() => _PretsUIState();
}

class _PretsUIState extends State<PretsUI> {

  int _currentIndex = 1;

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