void main() {
  Group bigBang = Group('빅뱅');
  Solo somi = Solo('소미');

  bigBang.sayName();
  somi.sayName();
}

// interface 는 인스턴스화 하기 위한 class 가 아니기 때문에 abstract class 로 만든다.
abstract class IdolInterface {
  String name;

  IdolInterface(this.name);

  // abstract class 에선 method 의 body 가 필요 없음.
  void sayName();
}

class Group implements IdolInterface {
  @override
  String name;

  Group(this.name);

  @override
  void sayName() {
    print('저희 이름은 $name 입니다.');
  }
}

class Solo implements IdolInterface {
  @override
  String name;

  Solo(this.name);

  @override
  void sayName() {
    print('제 이름은 $name 입니다.');
  }
}

