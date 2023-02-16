import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route/home.dart';

class PageConstApp extends StatelessWidget {
  const PageConstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Route Const')), // AppBar 추가

      body: Center(
        // Center 위젯 추가

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${(Get.arguments as ArgsPara).ID2}'),
            Text('${(Get.arguments as ArgsPara).COLS2.toString()}'),
            Text('${(Get.arguments as ArgsPara).toString()}'),
            ElevatedButton(
              // RaisedButton 위젯 추가
              onPressed: () {
                Get.toNamed("/");
              }, // 버튼이 눌릴 때의 동작을 정의합니다.
              child: Text('Home'), // 버튼의 내용을 지정합니다.
            ),
          ],
        ),
      ),
    );
  }
}
