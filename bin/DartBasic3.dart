enum Status {
  approved,
  pending,
  rejected;
}

void main() {
  // enum 사용
  Status status = Status.approved;

  if (status == Status.approved) {
    print('승인 되었습니다.');
  } else if (status == Status.pending) {
    print('대기중 입니다.');
  } else {
    print('거절 되었습니다.');
  }

  // 함수 사용
  int result1 = addNumbers(5, 10, 15);
  int result2 = addNumbers1(10, z: 30, y: 20);
  print('total : ${result1 + result2}');

  int result3 = calculate(10,20,30, subtract);
  print(result3);
}


/*
Function

1. positional parameter - 파라미터를 순서대로 주입해야 하는 기본적인 형태

2. optional parameter - 만약 있어도 되고 없어도 되는 파라미터가 있다면
  []로 묶어주고 default 값을 할당해 준다. 함수 실행시 파라미터를 넣어주면 default 값은 무시된다.

3. named parameter - 주입 순서가 중요하지 않은 이름이 있는 파라미터.
  {}으로 감싼 뒤 required 를 사용하고 마찬가지로 default 값 지정으로 optional 도 적용 가능

*/
int addNumbers(int x, [int y = 0, int z = 0]) {
  int sum = x + y + z;

  print('x : $x');
  print('x : $y');
  print('x : $z');

  if (sum % 2 == 0) {
    print('짝수 입니다.');
  } else {
    print('홀수 입니다.');
  }

  return sum;
}

// named parameter 예제
// parameter 에서 x 는 positional, y 는 named, z 는 optional 이 적용 됨.
int addNumbers1(int x, {required int y, int z = 30}) {
  int sum = x + y + z;

  return sum;
}

// arrow function
// => 뒤에 오는 값이 반환값이 됨.
int addNumbers3(int x, int y, int z) => x+y+z;


typedef Operation = int Function(int x, int y, int z);
int add(int x, int y, int z) => x+y+z;
int subtract(int x, int y, int z) => x-y-z;

int calculate(int x, int y, int z, Operation operation) => operation(x,y,z);