import 'package:flutter/material.dart';
import 'package:proyecto_moviles/pages/page_tabs.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageTabs(),
    );
  }
}
