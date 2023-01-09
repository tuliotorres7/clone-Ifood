import 'package:digi_ofertas/core/theme/app_imagens.dart';
import 'package:digi_ofertas/models/categoria.dart';

class ConteudoController {
  List<Categoria> getCategorias() {
    return [
      Categoria(nome: 'Açai', imagem: AppImagens.acai),
      Categoria(nome: 'Brasileira', imagem: AppImagens.brasileira),
      Categoria(nome: 'Café', imagem: AppImagens.cafe),
      Categoria(nome: 'Açai', imagem: AppImagens.acai),
      Categoria(nome: 'Brasileira', imagem: AppImagens.brasileira),
      Categoria(nome: 'Café', imagem: AppImagens.cafe),
    ];
  }
}
