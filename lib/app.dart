import 'package:digi_ofertas/views/content/content_page.dart';
import 'package:flutter/material.dart';

import 'core/theme/app_tema.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DigiOfertas',
        theme: AppTheme.tema,
        debugShowCheckedModeBanner: false,
        home: ContentPage());
  }
}
