import 'package:digi_ofertas/repositories/interface_empresa_repository.dart';
import 'package:get/state_manager.dart';

class HttpController extends GetxController with StateMixin {
  final IEmpresaRepository _httpRepository;

  HttpController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findEmpresas();
  }

  Future<void> findEmpresas() async {
    change([], status: RxStatus.loading());
    final dados = await _httpRepository.findAllEmpresas();
    change(dados, status: RxStatus.success());
  }
}
