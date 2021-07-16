import 'package:flutter/material.dart';
import 'package:flutter_dr_trip/main.dart';
import 'package:flutter_dr_trip/method.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



// 응답 결과를 List<Photo>로 변환하는 함수.
List<Music> parseMusics(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Music>((json) => Music.fromJson(json)).toList();
}

Future<List<Music>> fetchMusics(http.Client client) async {
  final response =
  await client.get('https://grepp-programmers-challenges.s3.ap-northeast-2.amazonaws.com/2020-flo/song.json');

  return parseMusics(response.body);
}

Column page5() {
  return Column(
    children: [
      SizedBox(height: 50),
      Container(),

    ],
  );
}