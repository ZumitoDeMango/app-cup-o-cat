import 'package:flutter/material.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  final formKey = GlobalKey<FormState>();
  final emailRegex = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Form(
            key: formKey,
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.all(25),
                child: ListView(
                  children: [
                    campoEmail(),
                    campoPassword(),
                    SizedBox(height: 20),
                    botonLogin(context),
                  ],
                ),
              ),
            )
          )
        ],
      ),
    );
  }

  TextFormField campoEmail() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Correo'
      ),
      validator: (email) {
        if (email!.isEmpty) {
          return 'Ingrese correo';
        }
        return null;
      },
    );
  }

  TextFormField campoPassword() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Contraseña'
      ),
      validator: (password) {
        if (password!.isEmpty) {
          return 'Ingrese contraseña';
        }
        return null;
      },
    );
  }

  ElevatedButton botonLogin(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Formulario válido')),
          );
        }
      },
      child: Text('Ingresar'),
    );
  }
}