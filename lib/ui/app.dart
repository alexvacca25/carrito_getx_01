import 'package:carrito_getx_01/ui/auth/login.dart';
import 'package:carrito_getx_01/ui/pages/carrito.dart';
import 'package:carrito_getx_01/ui/pages/productos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Carritos de Compras',
      debugShowCheckedModeBanner: false,
      routes: {
        '/productos': (context) => const Productos(),
        '/carrito': (context) => const Carrito(),
        '/login': (context) => const Login()
      },
      home: const Login(),
    );
  }
}
