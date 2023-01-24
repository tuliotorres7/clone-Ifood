import 'package:digi_ofertas/http/repository/http_binding.dart';
import 'package:digi_ofertas/views/content/content_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/theme/app_tema.dart';
import 'http/repository/http_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => HttpPage(), binding: HttpBindings()),
      ],
    );
  }
}
