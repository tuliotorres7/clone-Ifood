import 'package:digi_ofertas/core/theme/app_icons.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_cores.dart';

class BotaoNavegacaoComponent extends StatelessWidget {
  final List<BotaoNavegacaoItemComponent> items;
  final int indexAtual;
  final Function(int) onTap;

  const BotaoNavegacaoComponent(
      {Key? key,
      required this.items,
      required this.indexAtual,
      required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: AppCores.white),
        child: Column(
          children: [
            Container(
              height: 1,
              color: AppCores.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: items
                    .map((e) => e.copyWith(
                          isAtivo: items.indexOf(e) == indexAtual,
                          onTap: () => onTap(items.indexOf(e)),
                        ))
                    .toList(),
              ),
            ),
          ],
        ));
  }
}

class BotaoNavegacaoItemComponent extends StatelessWidget {
  final String label;
  final String iconeAtivo;
  final String icone;
  final bool isAtivo;
  final Function()? onTap;

  BotaoNavegacaoItemComponent copyWith(
      {String? label,
      String? iconeAtivo,
      String? icone,
      bool? isAtivo,
      Function()? onTap}) {
    return BotaoNavegacaoItemComponent(
      label: label ?? this.label,
      iconeAtivo: iconeAtivo ?? this.iconeAtivo,
      icone: icone ?? this.icone,
      isAtivo: isAtivo ?? this.isAtivo,
      onTap: onTap ?? this.onTap,
    );
  }

  const BotaoNavegacaoItemComponent(
      {Key? key,
      required this.label,
      required this.iconeAtivo,
      required this.icone,
      this.isAtivo = false,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(children: [
            AppIcone(isAtivo ? iconeAtivo : icone,
                color: Colors.black, size: Size(20, 25)),
            Text(label,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: isAtivo ? FontWeight.bold : FontWeight.normal))
          ]),
        ));
  }
}
