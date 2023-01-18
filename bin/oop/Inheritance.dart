void main() {
  print('------------Idol------------');
  Idol idol = Idol(name: '아이돌', membersCount: 5);
  idol.sayName();
  idol.sayMembersCount();

  print('------------BoyGroup------------');
  // 상속된 Idol class 의 method 사용.
  BoyGroup bts = BoyGroup(name: 'BTS', membersCount: 7);
  bts.sayName();
  bts.sayMembersCount();
  bts.sayMale();

  print('------------GirlGroup------------');
  GirlGroup ive = GirlGroup(name: 'Ive', membersCount: 5);
  ive.sayName();
  ive.sayMembersCount();
  ive.sayFemale();

  print('------------Type Comparison------------');
  // 타입 비교
  print(ive is Idol);
  print(ive is GirlGroup);
  print(ive is BoyGroup);
}

class Idol {
  String name;
  int membersCount;

  // named constructor
  Idol({required this.name, required this.membersCount});

  void sayName() {
    print('저희는 $name 입니다.');
  }

  void sayMembersCount() {
    print('$name 에는 $membersCount 명의 멤버가 있습니다.');
  }
}

// Idol class 를 상속
// 부모클래스의 멤버를 포함하는 자식클래스의 constructor 생성 필요.
class BoyGroup extends Idol {
  BoyGroup({required super.name, required super.membersCount});

  void sayMale() {
    print('저희는 남성 그룹 입니다.');
  }
}

class GirlGroup extends Idol {
  GirlGroup({required super.name, required super.membersCount});

  void sayFemale() {
    print('저희는 여성 그룹 입니다.');
  }
}
