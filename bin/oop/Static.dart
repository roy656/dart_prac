void main() {

  Employ roy = Employ('roy');
  Employ oli = Employ('Olivia');

  roy.printNameAndBuilding();
  oli.printNameAndBuilding();

  // static 이므로 instance 의 생성 없이 바로 class 에 접근 가능.
  Employ.building = '롯데타워';

  roy.printNameAndBuilding();
  oli.printNameAndBuilding();

  // static method  class 에 귀속되기 때문에 instance 없이 class 만으로 호출 가능.
  Employ.printBuilding();

}

class Employ {
  // static 은 instance 가 아니라 class 에 귀속된다.
  static String? building;   // ? 를 사용하여 nullable 한 String 값.
final String name;

Employ(this.name);

void printNameAndBuilding() {
  print('제 이름은 $name 입니다 $building 에서 근무하고 있습니다.');
}

static void printBuilding() {
  print('저는 $building 에서 근무중 입니다.');
}
}