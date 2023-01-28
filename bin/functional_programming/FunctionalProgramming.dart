void main() {
  List<String> ozin = ['로이', '올리', '콜린', '엘리', '리라', '마틴', '콴', '지은'];

  // 함수 의 파라미터로 함수를 적용.
  final newOzin = ozin.map((x) {
    return '오진 $x';
  });
  print(ozin); // 원래 List
  print(newOzin); // 변경되어 새로 만들어진 MappedList, 원래 List 는 건드리지 않는다.
  print(newOzin.runtimeType);

  // arrow function 을 쓰면 훨씬 더 간결해 진다. => 뒤에는 return 할 값.
  final newOzin2 = ozin.map((z) => '오진 $z');
  print(newOzin2.toList());


  // 다른 타입으로 형변환
  Map map = ozin.asMap();
  print('map : $map');
  print('keys : ${map.keys}');
  print('values : ${map.values.toList()}');

  Set set = ozin.toSet();
  print('set : $set');


  // '12345' -> [1.jpg, 2.jpg, 3.jpg, 4.jpg, 5.jpg]
  String sNumber = '12345';

  final result = sNumber.split('').map((e) => '$e.jpg').toList();
  print(result);


  Map<String, String> harryPotter = {
    'Harry Potter': '해리 포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저'
  };

  final mapResult = harryPotter.map((key, value) =>
      MapEntry(
          'Harry Potter Character : $key',
          '해리포터 캐릭터 : $value'
      ));
  print(mapResult);

  // key 혹은 value 값 만 List 로 변경하고 싶을때.
  final keys = harryPotter.keys.map((e) => 'Harry Potter Character $e')
      .toList();
  final values = harryPotter.values.map((e) => '해리포터 캐릭터 $e').toList();
  print(keys);
  print(values);

  // Set
  Set zirin = {'로이', '올리', '콜린', '엘리'};
  final newZirin = zirin.map((x) => '지린그룹 $x').toSet();
  print(newZirin);

  List<Map<String, String>> people = [
    {
      'name': 'roy',
      'group': 'family'
    },
    {
      'name': 'oli',
      'group': 'family'
    },
    {
      'name': 'collin',
      'group': 'ozin'
    }
  ];

  print(people);

  // where 사용시 해당 값이 true 면 keep, false 이면 제외 시킨다. (필터링)
  // people 의 요소의 'group' 이 'family' 와 같은 요소만 가져오고 아닐경우 제외.
  final family = people.where((x) => x['group'] == 'family');
  print(family);
  final ozinGroup = people.where((x) => x['group'] == 'ozin');
  print(ozinGroup);


  // reduce 함수는 두가지 파라미터를 사용하는데, 처음은 1,2 번째 요소를 사용하고, 그 뒤로는
  // 첫번째 인자에 이전 함수의 리턴값이 사용되고, 두번째는 그냥 다음 요소를 사용.
  //
  List<int> numbers = [1, 3, 5, 7, 9];
  final sum = numbers.reduce((prev, next){
    print('-------------');
    print('previous : $prev');
    print('next : $next');
    print('total : $prev + $next');

    return prev + next;
  } );
  print(sum);

  // 애로우 함수로 축약
  final sum2 = numbers.reduce((first, second) => first + second);
  print(sum2);

  // 문자열도 마찬가지
  List<String> words = [
    'I am ',
    'a king of the ',
    'world!'
  ];

  final sentence = words.reduce((a,b) => a + b);
  print(sentence);




}
