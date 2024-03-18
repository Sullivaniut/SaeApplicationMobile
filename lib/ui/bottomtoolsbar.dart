import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomToolsBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomToolsBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      currentIndex: currentIndex,
      onTap: (index) {
        switch(index){
          case 0:
            context.go('/home');
          case 1:
            context.go('/mesprets');
          case 2:
            context.go('/createannonce');
          case 3:
            context.go('/mesreservations');
          case 4:
            context.go('/compte');
        }
      },
      items: const [
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.home),
          label: 'Accueil',
        ),

        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.library_books),
          label: 'Mes prêts',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.add_box),
          label: 'Créer une annonce',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.event_note),
          label: 'Mes réservations',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.account_circle),
          label: 'Compte',
        ),
      ],
    );
  }
}
