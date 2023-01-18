void main() {
  Idol mamamoo = Idol('마마무', ['솔라', '문별', '휘인', '화사']);

  mamamoo.sayHello();
  mamamoo.introduce();

  mamamoo.firstMember = '명순';
  print(mamamoo.firstMemberss);
  mamamoo.introduce();

}

// class 나 method 등 무엇이든 앞에 _ 를 붙히게 되면 private 이 적용 된다.
class Idol {
  // field member
  final String name;
  final List<String> members;

  // constructor
  Idol(this.name, this.members);

  // method
  void sayHello() {
    print('안녕하세요 $name 입니다.');
  }

  void introduce() {
    print('멤버는 $members 입니다');
  }

  // getter
  String get firstMemberss {
    return this.members[0];
  }

  // setter
  set firstMember(String name) {
    this.members[0] = name;
  }
}
