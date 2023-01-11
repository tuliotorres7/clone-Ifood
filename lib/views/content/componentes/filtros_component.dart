import 'package:flutter/material.dart';

import '../../../core/theme/app_cores.dart';
import '../../../core/theme/app_icons.dart';
import '../../../core/theme/app_tipografia.dart';

class FiltrosComponent extends StatelessWidget {
  const FiltrosComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _FiltrosComponentDelegate(),
    );
  }
}

class _FiltrosComponentDelegate extends SliverPersistentHeaderDelegate {
  _FiltrosComponentDelegate();
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: AppCores.white,
      height: 54,
      child: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              width: 16,
            ),
            ItemFiltroComponent(
              label: 'Ordenar',
              icone: AppIcons.arrowDown,
            ),
            ItemFiltroComponent(
              label: 'Entega grátis',
              icone: AppIcons.arrowDown,
            ),
            ItemFiltroComponent(
              label: 'Pra retirar',
              icone: AppIcons.arrowDown,
            ),
            ItemFiltroComponent(
              label: 'Filtros',
              icone: AppIcons.arrowDown,
            ),
            SizedBox(
              width: 16,
            )
          ]),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 50;

  @override
  // TODO: implement minExtent
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class ItemFiltroComponent extends StatelessWidget {
  final String label;
  final String? icone;

  const ItemFiltroComponent({Key? key, required this.label, this.icone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 14, right: 8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: AppCores.white,
            border: Border.all(color: AppCores.grey)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(children: [
            Text(
              label,
              style: AppTipografia.filterItemStyle(context)
                  ?.copyWith(color: AppCores.black54),
            ),
            if (icone != null)
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: AppIcon(
                  icone!,
                  color: AppCores.black54,
                  size: Size(14, 14),
                ),
              )
          ]),
        ),
      ),
    );
  }
}
