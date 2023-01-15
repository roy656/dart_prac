void main() {
  // if 문
  int number = 6;
  if (number % 2 == 0) {
    print('짝수 입니다.');
  } else {
    print('홀수 입니다.');
  }

  // switch 문
  switch (number % 3) {
    case 0:
      print('나머지가 0 입니다.');
      break;
    case 1:
      print('나머지가 1 입니다.');
      break;
    default:
      print('나머지가 2 입니다.');
      break;
  }

  // for 문
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  print(sum);

  sum = 0;

  for (int i in numbers) {
    sum += i;
  }
  print(sum);

  sum = 0;


  // while 문
  while (sum < 10) {
    sum += 1;

    if (sum == 4) {
      continue; // 현재 loop 만 skip.
    }

    if (sum == 7) {
      break; // 전체 loop 을 종료.
    }
    print(sum);
  }
}
