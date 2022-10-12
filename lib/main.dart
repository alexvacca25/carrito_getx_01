import 'package:carrito_getx_01/ui/app.dart';
import 'package:carrito_getx_01/ui/domain/controlador/controlcarrito.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ControlCompras());
  runApp(const App());
}
