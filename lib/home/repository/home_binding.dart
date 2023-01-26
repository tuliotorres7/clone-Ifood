import 'package:get/instance_manager.dart';

import '../../repositories/interface_empresa_repository.dart';
import 'package:get/get.dart';

import 'empresa_home_repository.dart';
import 'home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IEmpresaRepository>(EmpresaHomeRepository());
    Get.put(HomeController(Get.find()));
  }
}
