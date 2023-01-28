main() {

  final List<Map<String, String>> idol = [
    {
      'name': '솔라',
      'group': '마마무'
    },
    {
      'name': '문별',
      'group': '마마무'
    },
    {
      'name': '장원영',
      'group': '아이브'
    },
    {
      'name': '가을',
      'group': '아이브'
    }
  ];

  // 요소들의 값들로 객체를 만들어 사용
  final parsedIdol = idol.map(
          (x) => Person(
              name: x['name']!,
              group: x['group']!)).toList();

  print(parsedIdol);

  // 객체로 맵핑하여 사용하게 되면 해당 객체에 어떤 값이 있는지 명확히 알 수 있게된다.
  for(Person person in parsedIdol) {
    print(person.name);
    print(person.group);
  }
  // where 로 필터링 하여 마마무 그룹만 조회.
  final mamamoo = parsedIdol.where((x) => x.group == '마마무');
  print(mamamoo);
}


// 데이터와 맵핑 시킬 class
class Person {
  String name;
  String group;

  Person({required this.name, required this.group});

  @override
  String toString() {
    return 'Person(name:$name, group:$group)';
  }
}