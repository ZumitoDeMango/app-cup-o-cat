import 'package:flutter/material.dart';
import 'package:proyecto_moviles/pages/tab_home.dart';
import 'package:proyecto_moviles/pages/tab_likes.dart';
import 'package:proyecto_moviles/pages/tab_profile.dart';
import 'package:proyecto_moviles/pages/tab_search.dart';

class PageTabs extends StatefulWidget {
  const PageTabs({super.key});

  @override
  State<PageTabs> createState() => _PageTabsState();
}

class _PageTabsState extends State<PageTabs> {
  int _currentIndex = 0;
  List<Map<String,dynamic>> _paginas  = [
    {'pagina':TabHome(),'texto':'Inicio','icono':Icons.home},
    {'pagina':TabLikes(),'texto':'Favoritos','icono':Icons.favorite},
    {'pagina':TabSearch(),'texto':'Busqueda','icono':Icons.search},
    {'pagina':TabProfile(),'texto':'Perfil','icono':Icons.person},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_currentIndex]['pagina'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF523a34),
            icon: Icon(_paginas[0]['icono']),
            label: _paginas[0]['texto']
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF523a34),
            icon: Icon(_paginas[1]['icono']),
            label: _paginas[1]['texto']
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF523a34),
            icon: Icon(_paginas[2]['icono']),
            label: _paginas[2]['texto']
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF523a34),
            icon: Icon(_paginas[3]['icono']),
            label: _paginas[3]['texto']
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}