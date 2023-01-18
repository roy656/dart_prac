void main() {
  List<String> ozin = ['로이', '올리', '콜린', '엘리', '리라', '마틴', '콴', '지은'];

  // 함수 의 파라미터로 함수를 적용.
  final newOzin = ozin.map((x){
    return '오진 $x';
  });
  print(ozin);  // 원래 List
  print(newOzin);   // 변경되어 새로 만들어진 MappedList, 원래 List 는 건드리지 않는다.
  print(newOzin.runtimeType);

  // arrow function 을 쓰면 훨씬 더 간결해 진다. => 뒤에는 return 할 값.
  final newOzin2 = ozin.map((z) => '오진 $z');
  print(newOzin2.toList());


  // 다른 타입으로 형변환
  Map map = ozin.asMap();
  print(map);
  print(map.keys);
  print(map.values.toList());

  Set set = ozin.toSet();
  print(set);


  // '12345' -> [1.jpg, 2.jpg, 3.jpg, 4.jpg, 5.jpg]
  String sNumber = '12345';

  final result = sNumber.split('').map((e) => '$e.jpg').toList();
  print(result);


  Map<String, String> harryPotter = {
    'Harry Potter' : '해리 포터',
    'Ron Weasley' : '론 위즐리',
    'Hermione Granger' : '헤르미온느 그레인저'
  };
  
  final mapResult = harryPotter.map((key, value) => MapEntry(
      'Harry Potter Character : $key',
      '해리포터 캐릭터 : $value'
  ));
  print(mapResult);

  // key 혹은 value 값 만 List 로 변경하고 싶을때.
  final keys = harryPotter.keys.map((e) => 'Harry Potter Character $e').toList();
  final values = harryPotter.values.map((e) => '해리포터 캐릭터 $e').toList();
  print(keys);
  print(values);

}
