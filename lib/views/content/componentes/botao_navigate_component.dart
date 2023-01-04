import 'package:digi_ofertas/core/theme/app_cores.dart';
import 'package:digi_ofertas/core/theme/app_icons.dart';
import 'package:flutter/material.dart';

class BotaoNavegacaoComponent extends StatelessWidget {
  final List<BotaoNavegacaoItemComponent> items;
  final int indexAtual;
  final Function(int) onTap;

  const BotaoNavegacaoComponent(
      {Key? key, required this.items, this.indexAtual = 0, required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
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
            SizedBox(height: MediaQuery.of(context).padding.bottom)
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
      Function? onTap}) {
    return BotaoNavegacaoItemComponent(
      label: label ?? this.label,
      iconeAtivo: iconeAtivo ?? this.iconeAtivo,
      icone: icone ?? this.icone,
      isAtivo: isAtivo ?? this.isAtivo,
      onTap: this.onTap,
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
          padding: const EdgeInsets.all(12),
          child: Column(children: [
            AppIcon(isAtivo ? iconeAtivo : icone,
                color: Colors.black, size: Size(20, 20)),
            Text(label,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: isAtivo ? FontWeight.bold : FontWeight.normal))
          ]),
        ));
  }
}
