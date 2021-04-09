class MyA {
  void publicAdd(int a, int b) {
    print('public sum: ${a+b}');
  }

  void _privateAdd(int a, int b) {
    print('private sum: ${a+b}');
  }
}