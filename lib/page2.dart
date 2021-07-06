import 'package:flutter/material.dart';
import 'package:flutter_dr_trip/method.dart';


Column page2() {
  return Column(
    children: [
      SizedBox(height: 50),
      setTitleText('숙박 조건을 선택해주세요!'),
      SizedBox(height: 20),
      cardHotel(),
      SizedBox(height: 40),
      Column(
        children: [
          Container(
            width: 300,
            child: setSearchRaisedButton('도시/숙소로 검색', Icons.map_outlined),
          ),
          Container(
            width: 300,
            child: setSearchRaisedButton(
                '2021.06.23(수) - 2021.06.24(목)', Icons.calendar_today),
          ),
          Container(
            width: 300,
            child: setSearchRaisedButton('성인 2명', Icons.account_circle),
          ),
          SizedBox(height: 40),
          boxSearch(),
        ],
      ),
    ],
  );
}