import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_dr_trip/method.dart';

final List<String> imgList = [
  'https://cdn.pixabay.com/photo/2019/08/01/12/36/illustration-4377408_960_720.png',
  'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_960_720.png',
  'https://cdn.pixabay.com/photo/2012/03/01/00/21/bridge-19513_960_720.jpg'
];

Column page1() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: const EdgeInsets.only(top: 30.0),
          child: Image.asset("Assets/Image/dr_trip_logo.png", height: 35),
        ),
      ),
      Container(
        height: 250,
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
              ),

              items: imgList.map((url) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            )),
      ),
      cardHotel(),
      Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: setTitleText("이것만 읽어보면 개이득!"),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          colorCard("경매의 기술", "최저가보다 싸게!", Icons.thumb_up_alt_outlined,
              Colors.deepPurpleAccent, Colors.deepPurple, Colors.white),
          colorCard("크레딧의 정석", "가입만 해도 1만원!", Icons.attach_money,
              Colors.lightGreenAccent, Colors.green, Colors.black),
        ],
      ),
      Container(
        margin: const EdgeInsets.only(top: 50.0),
        child: setTitleText("인기 여행지 추천호텔을 확인하세요!"),
      ),
      Container(
        margin: const EdgeInsets.only(top: 5.0),
        child: Text(
          "온라인 최저가보다 낮은 가격으로 입찰해보세요!",
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        height: 160.0,
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            setCircleBox("전체", Colors.black38),
            setCircleBox("서울", Colors.deepOrangeAccent),
            setCircleBox("부산", Colors.amberAccent),
            setCircleBox("제주", Colors.lightGreen),
            setCircleBox("인천", Colors.blue),
          ],
        ),
      ),
      Column(
        children: [
          hotelList(
            'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg',
            "소노캄 고양",
          ),
          hotelList(
            'https://www.p-city.com/mobilePub/static/images/hotelParadise/img_main_visual.jpg',
            "비발디파크 - 소노벨",
          ),
          hotelList(
            'https://cf.bstatic.com/xdata/images/hotel/max1280x900/269066650.jpg?k=15ca468438d1482b1b3ac7084078215b97a06829291c2bdeacf73653e3e2ea10&o=&hp=1',
            "히든 클리프 호텔 & 네이처",
          ),
        ],
      ),
    ],
  );
}