import 'package:digi_ofertas/core/theme/app_cores.dart';
import 'package:digi_ofertas/core/theme/app_icons.dart';
import 'package:digi_ofertas/core/theme/app_tipografia.dart';
import 'package:digi_ofertas/views/content/componentes/botao_navigate_component.dart';
import 'package:digi_ofertas/views/content/componentes/conteudo_tab_bar_component.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import 'componentes/cabecalho_local_component.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  int _indexAtual = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                CabecalhoLocalComponent(
                  localizacao: "Belo Horizonte",
                ),
                ConteudoTabBarComponent(
                    controller: tabController, onTap: (index) {})
              ],
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
        ],
      ),
    );
  }
}
