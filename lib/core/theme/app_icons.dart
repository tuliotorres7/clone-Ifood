import 'package:digi_ofertas/core/theme/app_cores.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/svg.dart';

const String pathIcons = 'assets/icons/';

class AppIcons {
  static const arrowDown = '${pathIcons}ordenacao/arrow_down.svg';
  static const homeActive = '${pathIcons}botoes/home_active.svg';
  static const home = '${pathIcons}botoes/home.svg';
}

class AppIcon extends StatelessWidget {
  final String icon;
  final Size size;
  final Color color;

  const AppIcon(this.icon, {Key? key, required this.size, required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: this.size.height,
      width: this.size.width,
      color: this.color,
    );
  }
}
