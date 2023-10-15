import 'package:dart_example/dart_example.dart' as dart_example;

void main() {
  // int num1 = 10;
  // int num2 = 20;
  // int sum = add(num1, num2);
  // print(sum);
  // print(dart_example.calculate());
  // print(dart_example.switchExample(1));
  //
  // print(dart_example.fun1());
  // print(dart_example.fun2());
  // print(dart_example.fun3());

  //예외처리
  //try catch문 + finally
/*  try {
    ///예외가 발생할 것으로 예상되는 코드
    print(10 ~/ 1); //~/ : 나눈 값의 몫을 구하는 연산자
  } catch (error, stack) {
    ///예외가 발생했을 때 실행하고자 하는 코드
    print(error);
    print(stack);
  } finally {
    ///예외 발생 여부와 상관없이 try~catch 이후에 실행하고자 하는 코드
    print('예외처리 문을 지나쳤습니다.');
  }
  print('위의 에러 때문에 동작하지 않습니다.');*/

  //on 문 : 특정 에러 타입을 잡을 때 사용한다.
/*  try {
    print(10 ~/ 0);
    throw Exception('Unkown Error');
  } on UnsupportedError catch (e, s) {
    print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch (e, s) {
    print('Null 값이 참조 되었습니다.');
  } catch (e, s) {
    ///위에 두 에러 말고 선언하지 않은 에러가 나왔을 때 처리하는 코드
    print('알 수 없는 에러가 발생하였습니다.');
  }*/

  //throw / rethrow 문 -> 코드가 의도하지 않은 대로 흘러 가는 것을 방지할 수 있다.
/*  try {
    throw Exception('Unknown Error');
  } on UnsupportedError catch (e, s) {
    print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch (e, s) {
    print('Null 값이 참조 되었습니다.');
  } catch (e, s) {
    ///위에 두 에러 말고 선언하지 않은 에러가 나왔을 때 처리하는 코드
    print('알 수 없는 에러가 발생하였습니다.');
    rethrow; //main 함수 밖으로 빠져나간다. -> 프로그램이 죽어버린다.
  }*/

  /// 비동기 프로그래밍 -> 함수
  /// 동기 : 모든 코드가 순차적으로 실행된다.
  /// 비동기 : 코드가 동시다발적으로 실행되서, 코드의 실행 순서를 보장할 수 없다.

  /// async / await / Future : 1회만 응답을 돌려받는 경우 ex) 서버 응답
  /// async* / yield / Stream : 지속적으로 응답을 돌려받는 경우 ex) 타이머

  // dart_example.todo(3);
  // dart_example.todo(1);
  // dart_example.todo(5);

  dart_example.todo2().listen((event) {
    print('Stream : $event');
  });
}

// int add(int num1, int num2) {
//   return num1 + num2;
// }
