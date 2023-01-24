import 'package:digi_ofertas/http/repository/http_controller.dart';
import 'package:digi_ofertas/views/content/content_page.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class HttpPage extends GetView<HttpController> {
  const HttpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContentPage(),
    );
  }
}
