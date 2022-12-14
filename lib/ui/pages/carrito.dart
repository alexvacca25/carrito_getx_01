
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/controlador/controlcarrito.dart';

class Carrito extends StatelessWidget {
  const Carrito({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ControlCompras controlc = Get.find();
    return Scaffold(
      appBar: AppBar(title: const Text('Carrito de Compras')),
      body: Column(
        children: [
          const Text('Factura de Compra'),
          Text('Jeans: ${controlc.producto}')
        ],
      ),
    );
  }
}
