import 'package:carrito_getx_01/data/services/peticionesuser.dart';
import 'package:get/get.dart';

import '../models/user.dart';

class controladorUser extends GetxController {
  final Rxn<List<User>> _users = Rxn<List<User>>();

  List<User>? get users => _users.value;

  Future<void> enviardatos(String user, String passw) async {
    _users.value = await PeticionesUser.validarUser(user, passw);
  }
}
