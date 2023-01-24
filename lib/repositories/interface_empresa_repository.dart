import 'package:digi_ofertas/models/empresa.dart';

abstract class IEmpresaRepository {
  Future<List<Empresa>> findAllEmpresas();
}
