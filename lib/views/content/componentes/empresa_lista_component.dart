import 'package:digi_ofertas/core/theme/app_cores.dart';
import 'package:digi_ofertas/core/theme/app_icons.dart';
import 'package:digi_ofertas/core/theme/app_tipografia.dart';
import 'package:digi_ofertas/models/empresa.dart';
import 'package:flutter/material.dart';

class EmpresaItemComponent extends StatelessWidget {
  final Empresa empresa;

  const EmpresaItemComponent({Key? key, required this.empresa})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(empresa.fotoUrl),
                radius: 30,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    empresa.nome,
                    style: AppTipografia.tituloEmpresa(context),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      AppIcone(AppIcones.star,
                          color: Colors.amber, size: Size(9, 9)),
                      SizedBox(width: 4),
                      Text(
                        empresa.avaliacao.toString(),
                        style: AppTipografia.detalhesEmpresa(context),
                      ),
                      SizedBox(width: 4),
                      _Dot(),
                      SizedBox(width: 4),
                      Text(empresa.categoria,
                          style: AppTipografia.detalhesEmpresa(context)),
                      SizedBox(width: 4),
                      _Dot(),
                      SizedBox(width: 4),
                      Text(empresa.distancia,
                          style: AppTipografia.detalhesEmpresa(context))
                    ],
                  ),
                  Row(
                    children: [
                      Text('10', style: AppTipografia.detalhesEmpresa(context)),
                      Text('-'),
                      Text('40'.toString(),
                          style: AppTipografia.detalhesEmpresa(context)),
                      SizedBox(width: 4),
                      _Dot(),
                      SizedBox(width: 4),
                      Text(empresa.frete,
                          style: AppTipografia.detalhesEmpresa(context)),
                    ],
                  )
                ],
              ),
            ],
          ),
          AppIcone(
            AppIcones.favLine,
            color: AppCores.grey,
            size: Size(20, 20),
          )
        ]));
  }
}

class _Dot extends StatelessWidget {
  const _Dot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('*', style: TextStyle(fontSize: 9, color: AppCores.grey));
  }
}
