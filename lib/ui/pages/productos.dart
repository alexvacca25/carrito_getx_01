import 'package:carrito_getx_01/ui/domain/controlador/controlcarrito.dart';
import 'package:carrito_getx_01/ui/pages/carrito.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Productos extends StatelessWidget {
  const Productos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ControlCompras controlc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Productos'),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => const Carrito());
              },
              icon: const Icon(Icons.shopping_bag_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app)),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    controlc.remItem();
                  },
                  icon: const Icon(Icons.remove_circle_outline_sharp)),
              const Text('Tennis Adidas'),
              IconButton(
                  onPressed: () {
                    controlc.addItem();
                  },
                  icon: const Icon(Icons.add_circle_outline_sharp)),
              Obx(() => Text('${controlc.producto}'))
            ],
          )
        ],
      ),
    );
  }
}
