import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CrearPerfilScreen extends StatefulWidget {
  const CrearPerfilScreen({super.key});

  @override
  State<CrearPerfilScreen> createState() => _CrearPerfilScreenState();
}

class _CrearPerfilScreenState extends State<CrearPerfilScreen> {
  final _nombreController = TextEditingController();
  final _edadController = TextEditingController();
  final _ocupacionController = TextEditingController();

  @override
  void dispose() {
    _nombreController.dispose();
    _edadController.dispose();
    _ocupacionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12, // Color del AppBar
        title: const Text(
          'Crear Perfil',
          style: TextStyle(
            color: Colors.white, // Color del texto del AppBar
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true, // Centra el título
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nombreController,
              decoration: const InputDecoration(
                labelText: 'Nombre',
                labelStyle: TextStyle(color: Colors.white), // Color del label
                hintText: 'Ingresa tu nombre', // Placeholder
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _edadController,
              decoration: const InputDecoration(
                labelText: 'Edad',
                labelStyle: TextStyle(color: Colors.white), // Color del label
                hintText: 'Ingresa tu edad', // Placeholder
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _ocupacionController,
              decoration: const InputDecoration(
                labelText: 'Ocupación',
                labelStyle: TextStyle(color: Colors.white), // Color del label
                hintText: 'Ingresa tu ocupación', // Placeholder
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12),
                ),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black12, // Color del botón
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                final datosUsuario = {
                  'nombre': _nombreController.text,
                  'edad': _edadController.text,
                  'ocupacion': _ocupacionController.text,
                };
                
                context.push('/ver-perfil', extra: datosUsuario);
              },
              child: const Text(
                'Guardar y Ver Perfil',
                style: TextStyle(
                  color: Colors.white, // Color del texto del botón
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
