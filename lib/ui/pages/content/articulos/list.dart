import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListarArticulos extends StatelessWidget {
  const ListarArticulos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Articulos'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/articulos');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
