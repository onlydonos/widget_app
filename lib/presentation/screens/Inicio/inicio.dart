import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12, // Cambia el color del AppBar
        title: const Text(
          'Inicio',
          style: TextStyle(
            color: Colors.white, // Cambia el color del texto
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true, // Centra el título
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black12, // Cambia el color del botón
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16), // Ajusta el tamaño del botón
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Cambia el borde del botón
            ),
          ),
          onPressed: () {
            context.push('/crear-perfil');
          },
          child: const Text(
            'Crear perfil',
            style: TextStyle(
              color: Colors.white, // Cambia el color del texto
              fontSize: 18, // Cambia el tamaño de la fuente
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
