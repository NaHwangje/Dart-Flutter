import 'dart:io';

void main() {
  stdout.write("[1] Write & Enter : ");
  var tempInput = stdin.readLineSync();
  stdout.writeln("[1] You wrote : $tempInput");

  while (tempInput != "exit") {
    stdout.write("[2] Write & Enter : ('exit' to stop) ");
    tempInput = stdin.readLineSync();
    stdout.writeln("[2] You Wrote : $tempInput");
  }

  stdout.write("[3] Siungle number : ");
  tempInput = stdin.readLineSync();
  stdout.writeln(
      "[3] You wrote : $tempInput and its type is ${tempInput.runtimeType}");

  var iList = <int>[];
  stdout.write("[4] Single number : ");
  tempInput = stdin.readLineSync(); //tempInput is nullable
  iList.add(int.parse(tempInput!)); // int.parse() is non-nullable
  stdout.write("[4] Single number again : ");
  tempInput = stdin.readLineSync();
  iList.add(int.parse(tempInput ?? '1'));
  stdout.writeln(
      "[4] Result : ${iList[0]} x ${iList[1]} = ${iList[0]} * ${iList[1]}");

  var sList = <String>[];
  stdout.write("[5] Two numbers (ex: 3, 3) : ");
  tempInput = stdin.readLineSync();
  sList = tempInput!.split(',');
  var index = 0;
  for (var item in sList) {
    iList[index] = int.parse(sList[index]);
    index++;
  }
  stdout.writeln(
      "[5] Result : ${iList[0]} x ${iList[1]} = ${iList[0]} x ${iList[1]}");
}
