int calculate() {
  return 6 * 7;
}

String condition() {
  bool isTrue = true;
  String res;

  if (isTrue) {
    res = "isTrue";
  }

  return res;
}

String switchExample(int num) {
  switch (num) {
    case 2:
      return ('Num $num');
    case 3:
      return ('Num $num');
    case 1:
      return ('Num $num');
    case 4:
      return ('Num $num');
    case 5:
      return ('Num $num');
    case > 100:
      return ("Too Big Number!");
    default:
      return ("No matched number");
  }
}

// 반복문 : for, for in , while, do while
// continue, break
int fun1() {
  var res = 0;
  for (int i = 0; i < 5; i++) {
    res = i++;
  }
  return res;
}

//for 단일변수 in 컬렉션 (List/ Set/ Map)
// 컬렉션 내에 요소들의 수만큼 사용 될 반복문
String fun2() {
  List<int> indexes = [1, 2, 3, 4, 5];
  String res = '';

  for (final index in indexes) {
    res += 'For문 $index\n';
  }

  return res;
}

//while문
int fun3() {
  bool isRunning = true;
  int count = 0;

  while (isRunning) {
    if (count >= 5) {
      isRunning = false;
    }
    count++;
    print('While is Running $count');
  }
  return count;
}

/// 비동기 프로그래밍 - Future
Future<void> todo(int sec) async {
  await Future.delayed(Duration(seconds: sec));
  print(' Todo Done in $sec seconds');
}

/// 비동기 프로그래밍 - Stream
Stream<int> todo2() async* {
  int counter = 0;

  while (counter <= 10) {
    counter++;
    await Future.delayed(Duration(seconds: 1));
    print('Todo is Working $counter');
    yield counter; //yield : return과 비슷한 역할을 한다. (return 객체를 수시로 전달함)
  }

  print('Todo is Done');
}
