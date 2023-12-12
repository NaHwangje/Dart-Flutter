import 'dart:io';
import 'dart:convert';
import 'package:alfred/alfred.dart';

Future main() async {
  var db = <dynamic, dynamic>{};

  final app = Alfred();

  app.post("/api/*", (req, res) => createDB(db, req));
  app.get("/api/*", (req, res) => readDB(db, req));
  app.put("/api/*", (req, res) => updateDB(db, req));
  app.delete("/api/*", (req, res) => deleteDB(db, req));

  await app.listen(4040);
}

void printAndSendHttpResponse(var db, var request, var content) async {
  print("\$ $content \n current DB      : $db");
  request.response
    ..headers.contentType = ContentType('text', 'plain', charset: "utf-8")
    ..headers.contentLength = content.length
    ..statusCode = HttpStatus.ok
    ..write(content);
  await request.response.close();
}

void createDB(var db, var request) async {
  var content = await utf8.decoder.bind(request).join();
  var transaction = jsonDecode(content) as Map;
  var key, value;

  print("\> content       : $content");

  transaction.forEach((k, v) {
    key = k;
    value = v;
  });

  if (db.containsKey(key) == false) {
    db[key] = value;
    content = "Success < $transaction created >";
  } else {
    content = "Fail < $key already exist >";
  }
  printAndSendHttpResponse(db, request, content);
}

void readDB(var db, var request) async {
  var key = request.uri.pathSegments.last;
  var content, transaction;

  if (db.containsKey(key) == true) {
    transaction = {};
    transaction[key] = db[key];
    content = "Success < $transaction retrieved >";
  } else {
    content = "Fail < $key non-exist >";
  }
  printAndSendHttpResponse(db, request, content);
}

void updateDB(var db, var request) async {
  var content = await utf8.decoder.bind(request).join();
  var transaction = jsonDecode(content) as Map;
  var key, value;

  print("\> content       : $content");

  transaction.forEach((k, v) {
    key = k;
    value = v;
  });

  if (db.containsKey(key) == true) {
    db[key] = value;
    content = "Success < $transaction updated >";
  } else {
    content = "Fail < $key already exist >";
  }
  printAndSendHttpResponse(db, request, content);
}

void deleteDB(var db, var request) async {
  var key = request.uri.pathSegments.last;
  var content, value;

  if (db.containsKey(key) == true) {
    value = db[key];
    db.remove(key);
    content = "Success < $value delete >";
  } else {
    content = "Fail < $key < non-exist >";
  }
  printAndSendHttpResponse(db, request, content);
}
