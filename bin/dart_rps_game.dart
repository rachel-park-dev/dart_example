import 'package:dart_example/dart_rps_game.dart' as dart_rps_game;

import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  /// 1. 유저에게 어떤 타입을 낼 것인지 물어본다.
  print("가위, 바위, 보 중 하나를 입력하세요.");

  /// 2. 유저가 입력한 값을 받아서 변수에 저장한다.
  final String userInput =
      stdin.readLineSync(encoding: utf8) ?? "Error"; //항상 상수이므로 final을 붙여줌.

  print(userInput);

  /// 3. 컴퓨터가 랜덤으로 값을 낸다.
  const selectList = ["가위", "바위", "보"];
  final cpuInput = selectList[Random().nextInt(selectList.length)];

  print(cpuInput);

  /// 4. 유저와 컴퓨터의 값을 비교한다.
  final result = dart_rps_game.getResult(userInput, cpuInput);

  /// 5. 결과를 출력한다.
  print(result);
}
