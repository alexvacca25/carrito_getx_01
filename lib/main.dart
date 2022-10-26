import 'package:carrito_getx_01/domain/controlador/controlleruser.dart';
import 'package:carrito_getx_01/domain/controlador/controlleruserf.dart';
import 'package:carrito_getx_01/ui/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'domain/controlador/controlcarrito.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(controladorUser());
  Get.put(ControlCompras());
  Get.put(ControlAuthentication());
  runApp(const App());
}
