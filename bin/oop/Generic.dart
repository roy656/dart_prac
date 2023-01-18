void main() {

  Lecture<String, String> lecture = Lecture('1', 'math');
  lecture.printIdType();
  
  Lecture<int, String> lecture2 = Lecture(2, 'history');

  lecture2.printIdType();

}

// 타입을 나중에 지정할 경우 generic 사용.
class Lecture<T, X> {
  final T id;
  final X name;

  Lecture(this.id, this.name);

  void printIdType() {
    print(id.runtimeType);
  }

}