import 'package:digi_ofertas/controllers/conteudo_controller.dart';
import 'package:digi_ofertas/core/theme/app_icons.dart';
import 'package:digi_ofertas/models/categoria.dart';
import 'package:digi_ofertas/views/content/componentes/botao_navegacao_component.dart';
import 'package:digi_ofertas/views/content/componentes/conteudo_tab_bar_component.dart';
import 'package:digi_ofertas/views/content/componentes/filtros_component.dart';
import 'package:digi_ofertas/views/content/componentes/item_categoria_component.dart';
import 'package:flutter/material.dart';

import '../../core/theme/app_cores.dart';
import 'componentes/cabecalho_local_component.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final controller = ConteudoController();
  late List<Categoria> categorias;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    categorias = controller.getCategorias();
    super.initState();
  }

  int _indexAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppCores.white,
        body: SafeArea(
          child: NestedScrollView(
            physics: BouncingScrollPhysics(),
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                CabecalhoLocalComponent(localizacao: "Belo Horizonte, 94"),
                ConteudoTabBarComponent(
                    controller: tabController, onTap: (index) {}),
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
                      SliverToBoxAdapter(
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
                                    right: index == categorias.length - 1
                                        ? 16
                                        : 10),
                                child: ItemCategoriaComponent(
                                  categoria: categorias[index],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BotaoNavegacaoComponent(
                  onTap: (index) {
                    setState(() {
                      _indexAtual = index;
                    });
                  },
                  indexAtual: _indexAtual,
                  items: [
                    BotaoNavegacaoItemComponent(
                        label: 'Início',
                        iconeAtivo: AppIcons.homeActive,
                        icone: AppIcons.home),
                    BotaoNavegacaoItemComponent(
                        label: 'Pedido',
                        iconeAtivo: AppIcons.homeActive,
                        icone: AppIcons.home),
                    BotaoNavegacaoItemComponent(
                        label: 'Perfil',
                        iconeAtivo: AppIcons.homeActive,
                        icone: AppIcons.home),
                  ]),
            ]),
          ),
        ));
  }
}
