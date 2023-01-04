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
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Text(localizacao,
                        style: AppTipografia.localTextStyle(context)),
                    AppIcon(
                      AppIcons.arrowDown,
                      size: Size(20, 20),
                      color: AppCores.corPrimaria,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
