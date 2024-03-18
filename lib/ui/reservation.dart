import 'package:flutter/material.dart';
import 'package:saeapplicationmobile/ui/bottomtoolsbar.dart';
import 'package:saeapplicationmobile/ui/header.dart';


class MesReservationsUI extends StatefulWidget{
  const MesReservationsUI({Key? key}) : super(key: key);
  @override
  _MesReservationsUIState createState() => _MesReservationsUIState();
}

class _MesReservationsUIState extends State<MesReservationsUI> {

    int _currentIndex = 3;

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