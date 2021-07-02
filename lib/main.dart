import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:like_button/like_button.dart';

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
        child: buildTabBar(),
      ),
    );
  }

  TabBar buildTabBar() {
    return TabBar(
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
            body: TabBarView(
              children: [
                SingleChildScrollView(
                  child: page1(),
                ),

                page2(),
                page3(),



                Text('4'),
                Text('5'),
              ],
            ),
            bottomNavigationBar: BottomBar(),
          ),
        )
    );
  }

  Column page3() {
    return Column(
                children: [
                  SizedBox(height: 50),
                  setTitleText('닥터트립 활용법 필독!'),
                  SizedBox(height: 20),
                  Container(
                    width: 300,
                    height: 150,
                    child: colorCard("경매의 기술", "최저가보다 싸게!", Icons.thumb_up_alt_outlined, Colors.deepPurpleAccent, Colors.deepPurple, Colors.white),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 300,
                    height: 150,
                    child: colorCard("크레딧의 정석", "가입만 해도 1만원!", Icons.attach_money, Colors.lightGreenAccent, Colors.green, Colors.black),
                  ),



                ],
              );
  }

  Text setTitleText(String text) {
    return Text(
                  text,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                );
  }

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
                        child: setSearchRaisedButton('2021.06.23(수) - 2021.06.24(목)', Icons.calendar_today),
                      ),
                      Container(
                        width: 300,
                        child: setSearchRaisedButton('성인 2명', Icons.account_circle),
                      ),
                      SizedBox(height: 40),
                      Container(
                        width: 300,
                        height: 50,
                        child:  RaisedButton.icon(
                          onPressed: (){ print('Button Clicked.'); },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0))),
                          label: Text('검색하기',
                            style: TextStyle(color: Colors.white),),
                          icon: Icon(Icons.search, color:Colors.white,),
                          textColor: Colors.white,
                          splashColor: Colors.red,
                          color: Colors.lightBlue,),
                      ),

                    ],
                  ),
                ],
              );
  }

  RaisedButton setSearchRaisedButton(String text, IconData iconData) {
    return RaisedButton.icon(
                        onPressed: (){ print('Button Clicked.'); },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        label: Text(text,
                          style: TextStyle(color: Colors.white),),
                        icon: Icon(iconData, color:Colors.white,),
                        textColor: Colors.white,
                        splashColor: Colors.indigo,
                        color: Colors.grey,
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

                  cardHotel(),

                  Container(
                    margin: const EdgeInsets.only(top : 30.0),
                    child: setTitleText("이것만 읽어보면 개이득!"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      colorCard("경매의 기술", "최저가보다 싸게!", Icons.thumb_up_alt_outlined, Colors.deepPurpleAccent, Colors.deepPurple, Colors.white),
                      colorCard("크레딧의 정석", "가입만 해도 1만원!", Icons.attach_money, Colors.lightGreenAccent, Colors.green, Colors.black),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top : 50.0),
                    child: setTitleText("인기 여행지 추천호텔을 확인하세요!"),
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

  Card colorCard(String text1, String text2, IconData iconData, Color colors1, Color colors2, Color textColor) {
    return Card(
                      color: colors1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      elevation: 4.0,
                      margin: const EdgeInsets.only(left: 5.0, right: 5.0, top: 15.0),
                      child: Column(
                        children: [
                          Container(
                            width: 150,
                            padding: EdgeInsets.only(top : 16.0, left: 16.0),
                            child: Text(
                              text1,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: textColor,
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            padding: EdgeInsets.only(top : 4.0, left: 16.0),
                            child: Text(
                              text2,
                              style: TextStyle(
                                fontSize: 14.0,
                                color: textColor,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              margin: const EdgeInsets.only(top: 5.0),
                              decoration: BoxDecoration(
                                color: colors2,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  iconData,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
  }

  Card cardHotel() {
    return Card(
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
                );
  }

  Stack hotelList(String hotelImage, String hotelName) {
    double width = hotelName.length.toDouble()*10 + 50;
    return Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(bottom: 10, left: 25, right: 25),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              hotelImage,
                              height: 175,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left : 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "한정특가",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                width: 60,
                                height: 25,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.pink[200],
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                  ),
                                ),
                                margin: const EdgeInsets.only(right: 5,),
                              ),
                              Container(
                                child: Text(
                                  "강력추천",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                width: 60,
                                height: 25,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.lightGreen,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                  ),
                                ),
                                margin: const EdgeInsets.only(right: 5,),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 20,
                          child: LikeButton(
                            size: 50,
                            circleColor:
                            CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: Color(0xff33b5e5),
                              dotSecondaryColor: Color(0xff0099cc),
                            ),
                            likeBuilder: (bool isLiked) {
                              return Icon(
                                Icons.thumb_up_alt_outlined,
                                color: isLiked ? Colors.yellowAccent : Colors.white,
                                size: 30,
                              );
                            },
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 25,
                          child: Container(
                            width: width,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                              ),
                            ),
                            child: Text(
                              hotelName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
  }
}
