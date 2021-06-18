import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
        height: 70,
        padding: EdgeInsets.only(bottom: 10, top: 5),
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
                Column(
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
                        child: Swiper(
                          control: SwiperControl(),
                          pagination: SwiperPagination(),
                          itemCount: imgList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Image.network(imgList[index]);
                          },
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.hotel,
                                  size: 40,
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
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.airplanemode_active,
                                  size: 40,
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
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.golf_course,
                                  size: 40,
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
                    )
                  ],
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
}
