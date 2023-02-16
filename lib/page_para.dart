import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageParaApp extends StatelessWidget {
  const PageParaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Route Parameter')), // AppBar 추가

      body: Center(
        // Center 위젯 추가

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${Get.parameters["ID4"]} 테스트'),
            Text('${Get.parameters["COLS4"]} '),
            Text('${Get.parameters["VAL4"]} 성공입니다.'),
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
