import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());

  // demoDataTypeString();
  // demoStringOperator();
  // demoListAndArray();
  // demoMap();
  // demoDynamic();
  // demoTripleOperator();

  demoNormalFunc(18, 'FC');
  // demoNormalFunc(18);
  // demoNormalFunc('FC', 18);


  demoOptionalParamsFunc();
  demoOptionalParamsFunc(age: 18);
  demoOptionalParamsFunc(name: 'FC');
  demoOptionalParamsFunc(age: 18, name: 'FC');

  demoRequiredParamsFunc();
  demoRequiredParamsFunc(name: 'FC');
  demoRequiredParamsFunc(age: 18);
  demoRequiredParamsFunc(age: 18, name: 'FC');

  demoOptionalPositionParamsFunc(18, 'FC');
  demoOptionalPositionParamsFunc(18, 'FC', 'badminton');

  demoDefaultParamsFunc();
  demoDefaultParamsFunc(age: 18);
  demoDefaultParamsFunc(name: 'FC');
}

void demoNormalFunc(int age, String name) {
  print('normal, age: $age, name: $name');
}

void demoOptionalParamsFunc({int age, String name}) {
  print('optional, age: $age, name: $name');
}

void demoRequiredParamsFunc({@required int age, @required String name}) {
  print('required, age: $age, name: $name');
}

void demoDefaultParamsFunc({int age = 20, String name = 'Forever'}) {
  print('default, age: $age, name: $name');
}

void demoOptionalPositionParamsFunc(int age, String name, [String interests]) {
  if (interests != null) {
    print('$name loves $interests');
  }
  else {
    print('$name has no interests');
  }
}

demoTripleOperator() {
  int a = 20;
  var val = a > 10 ? a : 0; //20
  var val2 = a > 20 ? a : 0; //0

  var val3 = val ?? val2; //20
  var val4 = val2 ?? val; //0
  var nullVar;
  var val5 = nullVar ?? val; //20
}

demoDynamic() {
  dynamic dynamicVar = 'abc'; //abc
  dynamicVar = 1; //1
  Object objVar = '123'; //123
  objVar = 3; //3
}

demoMap() {
  Map game = new Map();
  game['name'] = 'Switch';
  game['company'] = 'Nintendo';
  print(game); //{name: Switch, company: Nintendo}
  print(game['name']); //Switch
  game.remove('name');
  print(game); //{company: Nintendo}
  game.clear();
  print(game); //{}

  Map constMap = const {'name': 'Switch', 'company': 'Nintendo'};
  try {
    constMap['price'] = 10000; //Runtime error
  }
  catch (e) {
    print(e); //Unsupported operation: Cannot set value in unmodifiable Map
  }
}

demoListAndArray() {
  var deprecatedList = new List();
  var emptyList = List.filled(0, null, growable: true);
  print(emptyList); //[]
  var growableList = List.filled(3, 1, growable: true);
  print(growableList); //[1, 1, 1]
  var ungrowableList = List.filled(3, 2, growable: false);
  print(ungrowableList); //[2, 2, 2]
  var array = [1, 2, 3];
  print('$array, length: ${array.length}'); //[1, 2, 3], length: 3
  var constArray = const[4, 5, 6];
  print(constArray); //[4, 5, 6]

  growableList.length = 5; //[1, 1, 1, null, null]
  growableList.add(4); //[1, 1, 1, null, null, 4]
  growableList.remove(1); //[1, 1, null, null, 4]
  growableList.insert(4, 3); //[1, 1, null, null, 3, 4]
  print(growableList[5]); //4
  print(growableList.sublist(1, 4)); //[1, null, null]
  array.length = 4; //[1, 2, 3, null]
  array.shuffle(); //[2, null, 3, 1]

  try {
    print(ungrowableList); //[2, 2, 2]
    ungrowableList.length = 5; //Runtime error
  }
  catch (e) {
    print(e); //Unsupported operation: Cannot change the length of a fixed-length list
  }

  try {
    print(constArray); //[4, 5, 6]
    constArray.length = 4; //Runtime Error
  }
  catch (e) {
    print(e); //Unsupported operation: Cannot change the length of an unmodifiable list
  }
}

demoStringOperator() {
  String str1 = 'ha' 'ha';
  String str2 = "wo" "wo";
  String str3 = 'ha' + 'ha';
  String str4 = "wo" + "wo";
  String str5 = 'ha''ha';
  String str6 = 'ha' * 3;
  String str7 = 'Hello World'[2];

  print(str1); //haha
  print(str2); //wowo
  print(str3); //haha
  print(str4); //wowo
  print(str5); //haha
  print(str6); //hahaha
  print(str7); //l
  print('$str5'); //haha
  print('${str5 * 2}'); //hahahaha
}

demoDataTypeString() {
  var str1 = "Hello";
  var str2 = 'World';
  var str3 = '''Hello
  World''';
  var str4 = 'Hello \nWorld';
  var str5 = r'Hello \nWorld';
  print(str1); //Hello
  print(str2); //World
  print(str3); //Hello
                   //World
  print(str4); //Hello
               //World
  print(str5); //Hello \nWorld
}

demoDataTypeNumber() {
  // num a = 10;
  // a = 30.2;
  //
  // int b = 10;
  // b = 30.2;
  //
  // double c = 10;
  // c = 30.2;
}

demoNumberOperator() {
  print(12/7);             //1.7142857142857142
  print(12~/7);            //1
  print(12%7);             //5
  print(12.isNaN);         //false
  print(12.isEven);        //true
  print(12.isOdd);         //false
  print((12.5).round());   //13
  print((12.5).floor());   //12
  print((12.5).ceil());    //13
  print((12.5).toInt());   //12
  print((12.5).toDouble());//12.5
  print((12.5).abs());     //12.5
}

demoDataType() {
}

demoConst() {
  const a = 5;
  // Uncommenting below statement will cause compile time error.
  // Because we can't able to assign a runtime value to a const variable
  // const b = DateTime.now();

  // Without type or var
  const c = 5;
  // With a type
  const int d = 5;
}

demoBool() {
  var a = true;
  const b = false;
}

demoFinal() {
  final a = 5;
  final b = DateTime.now();
  final int c = 5;
}

class A {
  static const PI = 3.14159;
  static final a = 1;

  static int add1(int a, int b) {
    return a + b;
  }

  int add2(int a, int b) {
    return a + b;
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String randomStr = '';

  void _incrementCounter() {
    setState(() {
      _counter++;
      randomStr = WordPair.random().asPascalCase;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup 1'),
      ),
      body: _buildSuggestion(),
    );
  }

  Widget _buildSuggestion() {
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
    }
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      )
    );
  }
}

