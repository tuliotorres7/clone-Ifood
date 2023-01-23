import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/svg.dart';

const String pathIcones = 'assets/icons/';

class AppIcones {
  static const arrowDown = '${pathIcones}ordenacao/arrow_down.svg';

  static const fav = '${pathIcones}fav.svg';
  static const favLine = '${pathIcones}fav_line.svg';
  static const offer = '${pathIcones}offer.svg';
  static const star = '${pathIcones}star.svg';

  static const homeActive = '${pathIcones}botoes/home_active.svg';
  static const home = '${pathIcones}botoes/home.svg';
}

class AppIcone extends StatelessWidget {
  final String icon;
  final Size size;
  final Color color;

  const AppIcone(this.icon, {Key? key, required this.size, required this.color})
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
