import 'dart:async';

void main() {
  
  // calculate(2).listen((val) {
  //   print('calculate(2) : $val');
  // });
  //
  // calculate(4).listen((val) {
  //   print('calculate(4) : $val');
  // });

  playAllStream().listen((val) {
    print(val);
  });
}


Stream<int> playAllStream() async*{
  yield* calculate(1);
  yield* calculate(1000);   // yield* 을 쓰면 모든 yield 값이 다 나올때까지 기다리고 다음을 가져온다.
}

Stream<int> calculate(int num) async* {
  for (int i = 0; i < 5; i++) {
    yield i * num;    // yield 는 각 결과들을 개별적으로 다 return 한다.

    await Future.delayed(Duration(seconds: 2));
  }
}