import 'package:flutter/material.dart';
import 'package:flutter_dr_trip/page1.dart';
import 'package:flutter_dr_trip/page2.dart';
import 'package:flutter_dr_trip/page3.dart';
import 'package:flutter_dr_trip/page4.dart';
import 'package:flutter_dr_trip/page5.dart';

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
        home: MyHomePage());
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
          icon: Icon(Icons.search, size: 20),
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
                SingleChildScrollView(
                  child: page4(),
                ),
                page5(),
              ],
            ),
            bottomNavigationBar: BottomBar(),
          ),
        )
    );
  }
}
