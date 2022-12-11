import 'package:digi_ofertas/core/theme/app_cores.dart';
import 'package:digi_ofertas/core/theme/app_typografia.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CabecalhoLocalComponent(
            localizacao: "Belo Horizonte",
          ),
          TabBar(
              labelColor: Colors.black,
              labelStyle: AppTipografia.bodyText(context)
                  ?.copyWith(color: Colors.black),
              indicator: MaterialIndicator(
                  color: AppColors.corPrimaria,
                  height: 2,
                  topLeftRadius: 5,
                  topRightRadius: 5),
              controller: tabController,
              tabs: [
                Tab(
                  text: 'Restaurante',
                ),
                Tab(text: 'Lanchonete'),
              ])
        ],
      ),
    );
  }
}
