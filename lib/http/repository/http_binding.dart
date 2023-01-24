import 'package:digi_ofertas/http/repository/empresa_http_repository.dart';
import 'package:get/instance_manager.dart';

import '../../repositories/interface_empresa_repository.dart';
import 'package:get/get.dart';

import 'http_controller.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IEmpresaRepository>(EmpresaHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
