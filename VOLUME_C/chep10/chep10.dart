// Dart API Reference: http://api.dart.dev/stable/index.html

import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() {
  //dart:core
  List<String> fruits = ['Apple is red', '  Banana  ', 'Mango'];
  // List Class: http://api.dart.dev/stable/List-class.html
  print("[1] Mango in List ?: ${fruits.contains('Mango')}");
  // String class : http://api.dart.dev/stable/String-class.html
  print("[1] Starts with 'Apple' ?: ${fruits[0].startsWith('Apple')}");
  print("[1] End with 'Red' ?: ${fruits[0].endsWith('Red')}");
  print("[1] index of 'Red': ${fruits[0].indexOf('Red')}");
  print("[1] Trim '  Banana  ': ${fruits[1].trim()}");

  // dart:io - Platform Class
  // http://api.dart.dev/stable/Platform-class.html
  String os = Platform.operatingSystem;
  String path = Platform.script.toFilePath();
  print("[2] OS: $os");
  print("[2] Source File: $path");

  //dart:math - Math Library
  // http://api.dart.dev/stable/dart-math-library.html
  print("[3] max(2,4): ${max(2, 4)}");
  print("[3] min(2,4): ${min(2, 4)}");
  print("[3] e: {$e}");
  print("[3] pi: {$pi}");

  // dart:async & dart:core
  // DateTime class: http://api.dart.dev/stable/dart-core/DateTime--class.html
  var t1 = DateTime.now();
  // Future Class: http://api.dart.dev/stable/dart-anync/Future-class.html
  Future.wait([async1(), async2(), async3()]).then((List<int> nums) {
    var t2 = DateTime.now();
    // List.reduce: http://api.dart.dev/stable/dart-core/Iterable/reduce.html
    var sum = nums.reduce((curr, next) => curr + next);
    print('[4] Sum: $sum < Time: ${t2.difference(t1)} >');
  }).catchError(print);
}

Future<int> async1() async {
  print("[4] async1(): 1second left.");
  await Future.delayed(Duration(seconds: 1));
  print("[4] async1(): finished.");
  return 10;
}

Future<int> async2() async {
  print("[4] async2(): 2second left.");
  await Future.delayed(Duration(seconds: 1));
  print("[4] async2(): 1second left.");
  await Future.delayed(Duration(seconds: 1));
  print("[4] async2(): finished.");
  return 20;
}

Future<int> async3() async {
  print("[4] async3(): 3second left.");
  await Future.delayed(Duration(seconds: 1));
  print("[4] async3(): 2second left.");
  await Future.delayed(Duration(seconds: 1));
  print("[4] async3(): 1second left.");
  await Future.delayed(Duration(seconds: 1));
  print("[4] async3(): finished.");
  return 30;
}
