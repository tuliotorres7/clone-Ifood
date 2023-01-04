import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../../../core/theme/app_cores.dart';
import '../../../core/theme/app_tipografia.dart';

class ConteudoTabBarComponent extends StatelessWidget {
  final TabController controller;
  final Function(int) onTap;

  const ConteudoTabBarComponent(
      {Key? key, required this.controller, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 200),
      child: TabBar(
          labelPadding: EdgeInsets.zero,
          onTap: onTap,
          indicatorPadding: EdgeInsets.zero,
          labelColor: AppCores.corPrimaria,
          unselectedLabelColor: AppCores.black54,
          labelStyle: AppTipografia.tabBarStyle(context),
          indicator: MaterialIndicator(
              color: AppCores.corPrimaria,
              height: 2,
              topLeftRadius: 5,
              topRightRadius: 5),
          controller: controller,
          tabs: [
            Tab(
              child: Align(
                  alignment: Alignment.centerLeft, child: Text('Restaurante')),
            ),
            Tab(
              child: Text('Lanchonete'),
            )
          ]),
    );
  }
}
