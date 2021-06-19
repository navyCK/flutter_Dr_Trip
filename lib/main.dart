import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dr.Trip',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          primaryColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage()
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: colorThemeYellow(), //색상
      child: Container(
        height: 60,
        padding: EdgeInsets.only(bottom: 5, top: 5),
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          // indicatorColor: colorThemeRed(),
          indicatorWeight: 4,
          labelColor: Colors.indigo,
          unselectedLabelColor: Colors.black38,
          labelStyle: TextStyle(
            fontSize: 8,
            // fontFamilyFallback: fontFamilyName('Yanolja')
          ),

          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              text: '홈',
            ),
            Tab(
              icon: Icon(
                  Icons.search,
                  size: 20
              ),
              text: '검색',
            ),
            Tab(
              icon: Icon(
                Icons.bookmark_border,
                size: 20,
              ),
              text: '가이드',
            ),
            Tab(
              icon: Icon(
                Icons.airplanemode_active,
                size: 20,
              ),
              text: '추천트립',
            ),
            Tab(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 20,
              ),
              text: '마이페이지',
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> imgList = [
  'http://reasley.com/wp-content/uploads/2020/04/one.jpg',
  'http://reasley.com/wp-content/uploads/2020/04/two.jpg',
  'http://reasley.com/wp-content/uploads/2020/04/three.jpg'
];

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dr.Trip',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          primaryColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: DefaultTabController(
          length: 5,
          child: Scaffold(
            // appBar: AppBar(
            //   title: Text('Dr.Trip'),
            // ),
            body: TabBarView(
              children: [
                SingleChildScrollView(
                  child: page1(),
                ),
                Text('2'),
                Text('3'),
                Text('4'),
                Text('5'),
              ],
            ),
            bottomNavigationBar: BottomBar(),
          ),
        )
    );
  }

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
                        height: 200.0,
                        autoPlay: true,
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
                      )
                    ),
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    elevation: 4.0,
                    margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.hotel,
                                  size: 40,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      "국내호텔"
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.airplanemode_active,
                                  size: 40,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      "해외호텔"
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.golf_course,
                                  size: 40,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      "국내골프"
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top : 30.0),
                    child: Text(
                      "이것만 읽어보면 개이득!",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        color: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        elevation: 4.0,
                        margin: const EdgeInsets.only(left: 15.0, right: 5.0, top: 15.0),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              padding: EdgeInsets.only(top : 16.0, left: 16.0),
                              child: Text(
                                "경매의 기술",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              padding: EdgeInsets.only(top : 4.0, left: 16.0),
                              child: Text(
                                "최저가보다 싸게!",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                margin: const EdgeInsets.only(top: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.thumb_up_alt_outlined,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        color: Colors.lightGreenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        elevation: 4.0,
                        margin: const EdgeInsets.only(left: 5.0, right: 15.0, top: 15.0),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              padding: EdgeInsets.only(top : 16.0, left: 16.0),
                              child: Text(
                                "크레딧의 정석",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              padding: EdgeInsets.only(top : 4.0, left: 16.0),
                              child: Text(
                                "가입만 해도 1만원!",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                margin: const EdgeInsets.only(top: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.attach_money,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top : 50.0),
                    child: Text(
                      "인기 여행지 추천호텔을 확인하세요!",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top : 5.0),
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 120.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black38,
                                ),
                              ),
                              Container(
                                child: Text(
                                  "전체",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 120.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.deepOrangeAccent,
                                ),
                              ),
                              Container(
                                child: Text(
                                  "서울",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 120.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amberAccent,
                                ),
                              ),
                              Container(
                                child: Text(
                                  "부산",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 120.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.lightGreen,
                                ),
                              ),
                              Container(
                                child: Text(
                                  "제주",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 120.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                              ),
                              Container(
                                child: Text(
                                  "인천",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                    ,
                  ),


                  Container(),
                ],
              );
  }
}
