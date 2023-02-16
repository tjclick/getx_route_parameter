import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')), // AppBar 추가

      body: Center(
        // Center 위젯 추가

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/");
              }, // 버튼이 눌릴 때의 동작을 정의합니다.
              child: Text('Home'), // 버튼의 내용을 지정합니다.
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/args", arguments: "테스트값 01");
              }, // 버튼이 눌릴 때의 동작을 정의합니다.
              child: Text('Page Arguments'), // 버튼의 내용을 지정합니다.
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/map",
                    arguments: {"ID1": "02", "COLS1": 2, "VAL1": "테스트 02"});
              }, // 버튼이 눌릴 때의 동작을 정의합니다.
              child: Text('Page Map'), // 버튼의 내용을 지정합니다.
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/const",
                    arguments: ArgsPara(
                      ID2: "03",
                      COLS2: 3,
                      VAL2: "테스트 03",
                    ));
              }, // 버튼이 눌릴 때의 동작을 정의합니다.
              child: Text('Page Const'), // 버튼의 내용을 지정합니다.
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/para/004?COLS4=04&VAL4=테스트04");
              }, // 버튼이 눌릴 때의 동작을 정의합니다.
              child: Text('Page Parameters'), // 버튼의 내용을 지정합니다.
            ),
          ],
        ),
      ),
    );
  }
}

class ArgsPara {
  String? ID2;
  int? COLS2;
  String? VAL2;

  ArgsPara({this.ID2, this.COLS2, this.VAL2});
}
