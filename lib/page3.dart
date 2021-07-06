import 'package:flutter/material.dart';
import 'package:flutter_dr_trip/method.dart';

Column page3() {
  return Column(
    children: [
      SizedBox(height: 50),
      setTitleText('닥터트립 활용법 필독!'),
      SizedBox(height: 20),
      Container(
        width: 300,
        height: 200,
        child: colorCard("경매의 기술", "최저가보다 싸게!", Icons.thumb_up_alt_outlined,
            Colors.deepPurpleAccent, Colors.deepPurple, Colors.white),
      ),
      Container(
        width: 300,
        child: Card(
          color: Colors.deepPurpleAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 4.0,
          margin: const EdgeInsets.only(left: 5.0, right: 5.0, top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  '경매 동영상 보기',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                child: Icon(
                  Icons.navigate_next,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 20),
      Container(
        width: 300,
        height: 200,
        child: colorCard("크레딧의 정석", "가입만 해도 1만원!", Icons.attach_money,
            Colors.lightGreenAccent, Colors.green, Colors.black),
      ),
    ],
  );
}