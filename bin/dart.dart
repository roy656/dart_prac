void main() {

  var name = 'Roy';
  print(name);

  var name2 = 'Olivia';
  print(name2);

  name = 'Mari';
  print(name);

  String name3 = 'Colin';
  print(name3);

  print('${name} ${name2}');
  
  bool istrue = true;
  
  dynamic name4 = 'Mark';
  dynamic num = 1;
  var name5 = 'Martin';
  
  print(name4.runtimeType);
  print(name5.runtimeType);

  // dynamic 타입은 선언후 변경시 타입도 변경가능
  name4 = 2;
  // var 은 선언시의 타입으로 고정된다.
  // name5 = 3;


  // 타입명뒤에 ? 를 붙이면 nullable 이 된다.
  String str = 'string';
  String? str2 = 'string2';
  str2 = null;
  print(str2);

  int? numb = 1;
  numb = null;
  print(numb);

  // final 과 const 는 값의 변경이 불가하다.
  final String name6 = 'Roy';
  const String name7 = 'Olivia';
  // var 기능을 같이한다. (타입 생략 가능).
  final name8 = 'abc';
  const name9 = 'bcd';
}