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
}
