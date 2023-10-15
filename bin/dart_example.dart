import 'package:dart_example/dart_example.dart' as dart_example;

void main() {
  int num1 = 10;
  int num2 = 20;
  int sum = add(num1, num2);
  // print(sum);
  // print(dart_example.calculate());
  print(dart_example.switchExample(1));

  print(dart_example.fun1());
  print(dart_example.fun2());
}

int add(int num1, int num2) {
  return num1 + num2;
}
