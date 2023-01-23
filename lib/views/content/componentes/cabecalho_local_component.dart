import 'package:flutter/material.dart';

import '../../../core/theme/app_cores.dart';
import '../../../core/theme/app_icons.dart';
import '../../../core/theme/app_tipografia.dart';

class CabecalhoLocalComponent extends StatelessWidget {
  final String localizacao;

  const CabecalhoLocalComponent({Key? key, required this.localizacao})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: _LocalizacaoCabecalhoComponentDelegate(localizacao),
    );
  }
}

class _LocalizacaoCabecalhoComponentDelegate
    extends SliverPersistentHeaderDelegate {
  final String localizacao;
  _LocalizacaoCabecalhoComponentDelegate(this.localizacao);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Text(localizacao,
                      style: AppTipografia.localTextStyle(context)),
                  AppIcone(
                    AppIcones.arrowDown,
                    size: Size(20, 20),
                    color: AppCores.corPrimaria,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 40;

  @override
  // TODO: implement minExtent
  double get minExtent => 40;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
