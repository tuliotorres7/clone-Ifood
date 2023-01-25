import 'package:digi_ofertas/http/repository/http_controller.dart';
import 'package:digi_ofertas/models/empresa.dart';
import 'package:digi_ofertas/views/content/content_page.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../../controllers/conteudo_controller.dart';
import '../../core/theme/app_cores.dart';
import '../../core/theme/app_icons.dart';
import '../../core/theme/app_imagens.dart';
import '../../core/theme/app_tipografia.dart';
import '../../models/categoria.dart';
import '../../views/content/componentes/banners_component.dart';
import '../../views/content/componentes/botao_navegacao_component.dart';
import '../../views/content/componentes/cabecalho_local_component.dart';
import '../../views/content/componentes/empresa_lista_component.dart';
import '../../views/content/componentes/filtros_component.dart';
import '../../views/content/componentes/item_categoria_component.dart';

class HttpPage extends GetView<HttpController> {
  final conteudoController = ConteudoController();
  late List<Categoria> categorias = conteudoController.getCategorias();
  int _indexAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppCores.white,
        body: controller.obx((state) {
          List<Empresa> empresas = List<Empresa>.from(state);
          return SafeArea(
              child: NestedScrollView(
            physics: BouncingScrollPhysics(),
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                CabecalhoLocalComponent(localizacao: "Belo Horizonte, 94"),
                FiltrosComponent()
              ];
            },
            body: Column(children: [
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    return await Future.value();
                  },
                  child: CustomScrollView(
                    physics: BouncingScrollPhysics(),
                    slivers: [
                      _CategoriaSecao(
                        categorias: categorias,
                      ),
                      _BannerSecao(),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, bottom: 24),
                          child: Text(
                            'Lojas',
                            style: AppTipografia.tituloSecao(context),
                          ),
                        ),
                      ),
                      SliverList(
                          delegate: SliverChildListDelegate(
                        empresas
                            .map((e) => EmpresaItemComponent(
                                  empresa: e,
                                ))
                            .toList(),
                      )),
                    ],
                  ),
                ),
              ),
              _BotaoNavegacaoSecao(indexAtual: _indexAtual, onTap: (index) {}),
            ]),
          ));
        }));
  }
}

class _CategoriaSecao extends StatelessWidget {
  final List<Categoria> categorias;
  const _CategoriaSecao({Key? key, required this.categorias}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 86,
        child: ListView.builder(
          itemCount: categorias.length,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(
                  left: index == 0 ? 16 : 0,
                  right: index == categorias.length - 1 ? 16 : 10),
              child: ItemCategoriaComponent(
                categoria: categorias[index],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _BannerSecao extends StatelessWidget {
  const _BannerSecao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 170,
        child: BannersComponent(banners: [
          BannerItemComponent(pathImagem: AppImagens.banner1),
          BannerItemComponent(pathImagem: AppImagens.banner2),
          BannerItemComponent(pathImagem: AppImagens.banner3),
          BannerItemComponent(pathImagem: AppImagens.banner4),
        ]),
      ),
    );
  }
}

class _BotaoNavegacaoSecao extends StatelessWidget {
  final Function(int) onTap;
  final int indexAtual;

  const _BotaoNavegacaoSecao(
      {Key? key, required this.onTap, required this.indexAtual})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BotaoNavegacaoComponent(
        onTap: onTap,
        indexAtual: indexAtual,
        items: [
          BotaoNavegacaoItemComponent(
              label: 'Início',
              iconeAtivo: AppIcones.homeActive,
              icone: AppIcones.home),
          BotaoNavegacaoItemComponent(
              label: 'Pedido',
              iconeAtivo: AppIcones.homeActive,
              icone: AppIcones.home),
          BotaoNavegacaoItemComponent(
              label: 'Perfil',
              iconeAtivo: AppIcones.homeActive,
              icone: AppIcones.home),
        ]);
  }
}
