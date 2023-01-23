import 'package:flutter/material.dart';

import 'app_cores.dart';

class AppTipografia {
  static TextStyle? bodyText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1;
  }

  static TextStyle? small(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 12);
  }

  static TextStyle? bodyTextBold(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyText1
        ?.copyWith(fontWeight: FontWeight.w500);
  }

  static TextStyle? tabBarStyle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyText1
        ?.copyWith(color: AppCores.corPrimaria, fontWeight: FontWeight.w700);
  }

  static TextStyle? filterItemStyle(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(
        color: AppCores.corPrimaria,
        fontWeight: FontWeight.normal,
        fontSize: 13);
  }

  static TextStyle? localTextStyle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyText1
        ?.copyWith(fontWeight: FontWeight.w700, fontSize: 13);
  }

  static TextStyle? tituloSecao(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyText1
        ?.copyWith(fontWeight: FontWeight.w500, fontSize: 16);
  }

  static TextStyle? tituloEmpresa(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyText1
        ?.copyWith(fontWeight: FontWeight.w700, fontSize: 15);
  }

  static TextStyle? detalhesEmpresa(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(
        fontWeight: FontWeight.normal, fontSize: 12, color: AppCores.grey7);
  }
}
