import 'package:flutter/material.dart';

class CrearArticulo extends StatefulWidget {
  const CrearArticulo({super.key});

  @override
  State<CrearArticulo> createState() => _CrearArticuloState();
}

class _CrearArticuloState extends State<CrearArticulo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Articulos'),
      ),
    );
  }
}
