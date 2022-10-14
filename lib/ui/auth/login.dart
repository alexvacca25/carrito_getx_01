import 'package:carrito_getx_01/domain/controlador/controlleruser.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controluser = TextEditingController();
  TextEditingController controlpasswd = TextEditingController();
  controladorUser controlu = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  "https://www.kibrispdr.org/data/1065/download-logo-login-0.jpg"),
            ),
            TextField(
              controller: controluser,
              decoration:
                  const InputDecoration(labelText: 'Ingrese el Usuario'),
            ),
            TextField(
              controller: controlpasswd,
              obscureText: true,
              decoration:
                  const InputDecoration(labelText: 'Ingrese la Contraseña'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      controlu
                          .enviardatos(controluser.text, controlpasswd.text)
                          .then((value) {
                        if (controlu.users?.isNotEmpty == true) {
                          Get.offAllNamed('/productos');
                        } else {
                          Get.showSnackbar(const GetSnackBar(
                            title: 'Validacion de Usuarios',
                            message: 'Usuario no Existe',
                            icon: Icon(Icons.person_add),
                            duration: Duration(seconds: 4),
                            backgroundColor: Colors.red,
                          ));
                        }
                      });
                    },
                    icon: const Icon(Icons.login)),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.app_registration))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
