import 'package:flutter/material.dart';
import 'package:flutter_dr_trip/main.dart';
import 'package:flutter_dr_trip/method.dart';
import 'package:flutter_dr_trip/music_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

Future<String> _loadMusicAsset() async {
  return await rootBundle.loadString('Assets/music_json.json');
}

Future loadMusic() async {
  String jsonString = await _loadMusicAsset();
  final jsonResponse = json.decode(jsonString);
  Music music = new Music.fromJson(jsonResponse);
  print(music.title);
}

Column page5() {
  return Column(
    children: [
      SizedBox(height: 50),
      Container(),

    ],
  );
}