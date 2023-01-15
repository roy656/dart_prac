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

  int? number = 1;
  number = null;
  print(number);
  // 변수명에 ??= 를 사용하면 : number 가 null 이라면 5를 할당.
  number ??= 5;

  // final 과 const 는 값의 변경이 불가하다.
  final String name6 = 'Roy';
  const String name7 = 'Olivia';
  // var 기능을 같이한다. (타입 생략 가능).
  final name8 = 'abc';
  const name9 = 'bcd';

  // final 은 build time 에 값을 몰라도 상과없다.
  final DateTime now = DateTime.now();
  // const 는 build time 에 값을 절대적으로 알고 있어야 한다.
  // const DateTime now2 = DateTime.now();

  print(name8 is String);
  print(name8 is! String);


  // List
  // 배열
  List<int> nList = [1,2,3,4,5];
  List<String> sList = ['로이','올리','마리'];
  sList.add('콜린');
  sList.remove('콜린');
  sList.indexOf('콜린');
  print(nList[2]);
  print(nList.length);


  // Map
  // key, value 형태
  Map<String, String> family = {
    'Father' : 'Roy',
    'Mother' : 'Olivia',
    'Daughter' : 'Mari'
  };
  
  family.addAll({'Uncle' : 'Mark'});  // 추가 방법 1
  family['Sister'] = 'none';          // 추가 방법 2
  print(family['Uncle']);   // key 을 인덱스로 사용.
  print(family);
  print(family.keys);   // key 값만 전부 가져오기.
  print(family.values); // value 값만 전부 가져오기.


  // Set
  // 중복 허용 X
  Set<String> sSet = {
    'Iron Man',
    'Captain America',
    'Hulk',
    'Thor'
    'Hulk'
  };
  print(sSet.add('Spider Man'));
  print(sSet.remove('Captain America'));
  print(sSet.contains('Thor'));
  print(sSet);
}