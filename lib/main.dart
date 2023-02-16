import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';
import 'page_args.dart';
import 'page_map.dart';
import 'page_para.dart';
import 'page_const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/args", page: () => PageArgsApp()),
        GetPage(name: "/map", page: () => PageMapApp()),
        GetPage(name: "/const", page: () => PageConstApp()),
        GetPage(name: "/para/:ID4", page: () => PageParaApp()),
      ],
    );
  }
}
