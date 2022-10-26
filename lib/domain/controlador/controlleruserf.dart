import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ControlAuthentication extends GetxController {
  final FirebaseAuth authf = FirebaseAuth.instance;
  final Rx<dynamic> _uid = "".obs;
  final Rx<dynamic> _email = "Sin Registro".obs;

  String get uid => _uid.value;
  String get emailf => _email.value;

  Future<void> registrarEmail(String e, String p) async {
    try {
      
      UserCredential usuario =
          await authf.createUserWithEmailAndPassword(email: e, password: p);
      _uid.value = usuario.user!.uid;
      _email.value = usuario.user!.email;

    } on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        return Future.error('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        return Future.error('The account already exists for that email.');
      }
    }
  }
}
