import 'dart:async';

void main() {

  final controller = StreamController();  // dart:async package 에서 불러오는 class.
  final stream = controller.stream.asBroadcastStream();
  // broadCastStream 이 아니면 기본적으로 1번만 listening 할 수 있는 stream 이다.

  // stream 에 (val)값이 들어오는지 listen() 으로 듣고있다가 값이 들어오면 뒤의 함수를 실행.
  final streamListener1 = stream.where((val) => val % 2 == 0).listen((val){
    print('Listener 1 : $val');
  });

  final streamListener2 = stream.where((val) => val % 2 == 1).listen((val) {
    print('Listener 2 : $val');
  });

  // add 를 사용해서 listener 한테 값을 전달.
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);

}