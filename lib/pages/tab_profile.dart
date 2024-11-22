import 'package:flutter/material.dart';
import 'package:proyecto_moviles/pages/page_login.dart';

class TabProfile extends StatefulWidget {
  const TabProfile({super.key});

  @override
  State<TabProfile> createState() => _TabProfileState();
}

class _TabProfileState extends State<TabProfile> {
  @override
  Widget build(BuildContext context) {
    return PageLogin();
  }
}