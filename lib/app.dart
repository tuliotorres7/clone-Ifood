import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/repository/home_binding.dart';
import 'home/repository/home_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => HomePage(), binding: HomeBindings()),
      ],
    );
  }
}
