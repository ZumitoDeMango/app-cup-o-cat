import 'package:flutter/material.dart';
import 'package:proyecto_moviles/pages/page_login.dart';

class TabProfile extends StatelessWidget {
  final String username;

  const TabProfile({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil',),
        backgroundColor: const Color(0xFF523a34),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido, $username!',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF523a34),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Cerrar sesión y navegar a la pantalla de login
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const PageLogin()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF523a34),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: const Text("Cerrar Sesión"),
            ),
          ],
        ),
      ),
    );
  }
}
