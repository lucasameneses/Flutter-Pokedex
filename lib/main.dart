import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/pokecontroller.dart';
import 'pages/InitialPage/initialPage.dart';

void main() {
  Get.changeTheme(ThemeData.dark());
  Get.lazyPut(() => PokeController());
  runApp(GetMaterialApp(
    home: InitialPage(),
  ));
}