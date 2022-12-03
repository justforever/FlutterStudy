class MyA {
  static var staticVar = 3;
  static final staticFinal = DateTime.now();
  static const staticConst = 'Static Const';

  static int staticFunc(int a, int b) {
    return a + b;
  }

  void publicAdd(int a, int b) {
    print('public sum: ${a + b}');
  }

  void _privateAdd(int a, int b) {
    print('private sum: ${a + b}');
  }

  void publicMinus(int a, int b) {
    print('public minus: ${a - b}');
  }
}
