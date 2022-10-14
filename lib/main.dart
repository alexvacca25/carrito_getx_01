import 'package:carrito_getx_01/domain/controlador/controlleruser.dart';
import 'package:carrito_getx_01/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'domain/controlador/controlcarrito.dart';

void main() {
  Get.put(controladorUser());
  Get.put(ControlCompras());
  runApp(const App());
}
