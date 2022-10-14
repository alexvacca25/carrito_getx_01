import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../domain/models/user.dart';
import 'package:http/http.dart' as http;

class PeticionesUser {
  static Future<List<User>> validarUser(String user, String passwd) async {
    var url = Uri.parse(
        "https://desarolloweb2021a.000webhostapp.com/APIMOVIL/listaruser.php");
    final response = await http.post(url, body: {'user': user, 'pass': passwd});
    
    return compute(convertirLista,response.body);
  }

  static List<User> convertirLista(String respuesta) {
    final convertir = json.decode(respuesta).cast<Map<String, dynamic>>();
    return convertir.map<User>((json) => User.desdeJson(json)).toList();
  }
}
