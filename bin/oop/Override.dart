void main() {
  TimesTwo timesTwo = TimesTwo(2);
  print(timesTwo.calculate());

  TimesFour timesFour = TimesFour(2);
  print(timesFour.calculate());
}

class TimesTwo {
  final int number;

  TimesTwo(this.number);

  int calculate() {
    return number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(int number) : super(number);

  // 부모클래스의 method 재정의.
  @override
  int calculate() {
    return super.number * 4;

    // 이 메소드 안에서 부모클래스의 메소드를 사용하고 싶다면 마찬가지로 super 를 사용해 호출 가능
    // return super.calculate() * 2;
  }
}
