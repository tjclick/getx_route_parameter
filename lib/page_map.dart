import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageMapApp extends StatelessWidget {
  const PageMapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Route Map')), // AppBar 추가

      body: Center(
        // Center 위젯 추가

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${Get.arguments["ID1"]}'),
            Text('${Get.arguments["COLS1"].toString()}'),
            Text('${Get.arguments.toString()}'),
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
