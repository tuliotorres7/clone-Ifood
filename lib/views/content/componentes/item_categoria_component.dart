import 'package:digi_ofertas/models/categoria.dart';
import 'package:flutter/material.dart';

import 'package:digi_ofertas/core/theme/app_cores.dart';
import 'package:digi_ofertas/core/theme/app_tipografia.dart';

class ItemCategoriaComponent extends StatelessWidget {
  final Categoria categoria;
  const ItemCategoriaComponent({Key? key, required this.categoria})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          categoria.imagem,
          height: 60,
        ),
        Padding(
          padding: EdgeInsets.only(top: 6),
          child: Text(
            categoria.nome,
            style: AppTipografia.small(context)?.copyWith(color: AppCores.grey),
          ),
        )
      ],
    );
  }
}
