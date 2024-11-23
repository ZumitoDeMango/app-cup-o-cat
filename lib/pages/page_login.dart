import 'package:flutter/material.dart';
import 'package:proyecto_moviles/pages/page_tabs.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorMessage = "";
  String? _username; // Variable para guardar el nombre de usuario

  // Credenciales estáticas simuladas
  final String correctUsername = "admin";
  final String correctPassword = "1234";

  void _login() {
    setState(() {
      if (_usernameController.text == correctUsername &&
          _passwordController.text == correctPassword) {
        _errorMessage = "";
        _username = _usernameController.text; // Guardar el nombre de usuario
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => PageTabs(username: _username!), // Pasar el nombre de usuario a la siguiente pantalla
          ),
        );
      } else {
        _errorMessage = "Usuario o contraseña incorrectos.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 100, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Cup o\'Cat',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF523a34),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 150,
                child: Image.asset(
                  'assets/5be459b678633532944a8c026d84862e.jpg', 
                  fit: BoxFit.contain,
                ),
              ),
              const Text(
                'Iniciar Sesión',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF523a34),
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: "Usuario",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: "Contraseña",
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF523a34),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: const Text(
                  "Iniciar Sesión",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              if (_errorMessage.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    _errorMessage,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
