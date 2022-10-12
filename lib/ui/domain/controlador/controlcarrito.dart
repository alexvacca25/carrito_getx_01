import 'package:get/get.dart';

class ControlCompras extends GetxController {
  final _producto = 0.obs;

  int get producto => _producto.value;

  void addItem() {
    _producto.value = _producto.value + 1;
  }

  void remItem() {
    _producto.value = _producto.value - 1;
  }
}
