String getResult(String userInput, String cpuInput) {
  String result = "draw";
  const cpuWin = '컴퓨터 승리';
  const userWin = '유저 승리';

  switch (userInput) {
    case '가위':
      if (cpuInput == '바위') {
        result = cpuWin;
      }

      if (cpuInput == '보') {
        result = userWin;
      }
    case '바위':
      if (cpuInput == '보') {
        result = cpuWin;
      }

      if (cpuInput == '가위') {
        result = userWin;
      }
    case '보':
      if (cpuInput == '가위') {
        result = cpuWin;
      }

      if (cpuInput == '바위') {
        result = userWin;
      }
    default:
      result = 'Error';
  }
  return result;
}
