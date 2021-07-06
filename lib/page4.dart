import 'package:flutter/material.dart';
import 'package:flutter_dr_trip/method.dart';

Column page4() {
  return Column(
    children: [
      SizedBox(height: 50),
      setTitleText('추천 호텔 / 여행 일정을 확인하세요!'),
      SizedBox(height: 20),
      boxSearch(),
      SizedBox(height: 40),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            child: setTitle2Text('프로모션'),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            height: 160.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                setCircleBox("프로모션", Colors.black),
                setCircleBox("테스트", Colors.indigo),
              ],
            ),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            child: setTitle2Text('국내'),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            height: 160.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                setCircleBox("강원", Colors.black38),
                setCircleBox("서울", Colors.deepOrangeAccent),
                setCircleBox("부산", Colors.amberAccent),
                setCircleBox("제주", Colors.lightGreen),
                setCircleBox("인천", Colors.blue),
              ],
            ),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            child: setTitle2Text('동남아시아'),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            height: 160.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                setCircleBox("세부", Colors.pink),
                setCircleBox("발리", Colors.blue),
                setCircleBox("다낭", Colors.blueGrey),
                setCircleBox("싱가포르", Colors.greenAccent),
                setCircleBox("방콕", Colors.deepOrange),
              ],
            ),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            child: setTitle2Text('서유럽'),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            height: 160.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                setCircleBox("로마", Colors.orangeAccent),
                setCircleBox("파리", Colors.indigo),
                setCircleBox("런던", Colors.grey),
                setCircleBox("바르셀로나", Colors.pinkAccent),
                setCircleBox("뮌헨", Colors.amberAccent),
              ],
            ),
          ),
        ],
      ),


    ],
  );
}
