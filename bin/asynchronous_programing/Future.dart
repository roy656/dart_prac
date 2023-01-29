void main() {

  // Future - 미래에 받아올 값
  Future<String> name = Future.value('로이');
  Future<int> number = Future.value(3);
  Future<bool> isTrue = Future.value(true);

  print('함수 시작');

  // Future.delayed 로 async 가능
  // 1번 파라미터 = 지연시킬 기 Duration
  // 2번 파라미터 = 지연 기간 후 실행할 함수
  Future.delayed(Duration(seconds: 3), (){
    // print('3초 delayed');
  });

  addNumbers(1, 2);
}


// 함수를 비동기로 실행 하려면 parameter 와 body 사이에 async 키워드를 넣어야 된다.
void addNumbers(int num1, int num2) async {
  print('계산 시작 : $num1 + $num2');

  // 서버 시뮬레이션
  // await 를 사용해서 async 코드를 기다리게 할 수 있다. (코드를 순서대로 실행이 되지만)
  // 동기 프로그래밍 처럼 cpu 가 멈춘게 아니라 다른 작업을 찾아 먼저 실행한다.
  await Future.delayed(Duration(seconds: 3), () { // 3초 delay 동안 일단 다른 함수 실행
    print('계산완료 : $num1 + $num2 = ${num1 + num2}');
  });

  print('함수 완료');
}