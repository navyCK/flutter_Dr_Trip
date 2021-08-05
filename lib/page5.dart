import 'package:flutter/material.dart';
import 'package:flutter_dr_trip/main.dart';
import 'package:flutter_dr_trip/method.dart';
import 'package:flutter_dr_trip/music_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'User.dart';



Column page5() {
  var jsonString = '{"name" : "Joo Chulki", "email" : "ck2711@naver.com"}';
  // Map<String, dynamic> user = jsonDecode(jsonString);

  Map userMap = jsonDecode(jsonString);
  var user = User.fromJson(userMap);

  print('Howdy, ${user.name}!');
  print('We sent the verification link to ${user.email}.');

  String json = jsonEncode(user);
  String jsonName = jsonEncode(user.name);
  String jsonEmail = jsonEncode(user.email);
  print("String : " + json);


  return Column(
    children: [
      SizedBox(height: 50),
      Container(
        child: Text("이름 : " + jsonName),
      ),
      Container(
        child: Text("이메일 : " + jsonEmail),
      ),

    ],
  );
}