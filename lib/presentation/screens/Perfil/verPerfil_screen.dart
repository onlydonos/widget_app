import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerPerfilScreen extends StatelessWidget {
  final Map<String, String> datos;

  const VerPerfilScreen({
    super.key,
    required this.datos,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12, // Color del AppBar
        title: const Text(
          'Perfil',
          style: TextStyle(
            color: Colors.white, // Color del texto del AppBar
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nombre: ${datos['nombre']}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87, // Estilo del texto
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Edad: ${datos['edad']} años',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black87, // Estilo del texto
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Ocupación: ${datos['ocupacion']}',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black87, // Estilo del texto
              ),
            ),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black12, // Color del botón
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  context.go('/');
                },
                child: const Text(
                  'Regresar a Inicio',
                  style: TextStyle(
                    color: Colors.white, // Color del texto del botón
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
