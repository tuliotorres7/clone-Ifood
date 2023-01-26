import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:digi_ofertas/models/empresa.dart';
import 'package:digi_ofertas/repositories/interface_empresa_repository.dart';

class EmpresaHomeRepository implements IEmpresaRepository {
  @override
  Future<List<Empresa>> findAllEmpresas() async {
    final response =
        await http.get('http://192.168.100.50:3000/api/v1/empresa');

    final responseMap = jsonDecode(response.body);

    return responseMap.map<Empresa>((resp) => Empresa.fromMap(resp)).toList();
  }
}
