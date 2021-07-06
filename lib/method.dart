import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

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
                  child: Text("국내호텔"),
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
                  child: Text("해외호텔"),
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
                  child: Text("국내골프"),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
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

Text setTitle2Text(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ),
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
          padding: EdgeInsets.only(top: 16.0, left: 16.0),
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
          padding: EdgeInsets.only(top: 4.0, left: 16.0),
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

Padding setCircleBox(String name, Color color) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        Container(
          child: Text(
            name,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

Stack hotelList(String hotelImage, String hotelName) {
  double width = hotelName.length.toDouble() * 10 + 50;
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
        padding: const EdgeInsets.only(left: 25.0),
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
              margin: const EdgeInsets.only(
                right: 5,
              ),
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
              margin: const EdgeInsets.only(
                right: 5,
              ),
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

RaisedButton setSearchRaisedButton(String text, IconData iconData) {
  return RaisedButton.icon(
    onPressed: () {
      print('Button Clicked.');
    },
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    label: Text(
      text,
      style: TextStyle(color: Colors.white),
    ),
    icon: Icon(
      iconData,
      color: Colors.white,
    ),
    textColor: Colors.white,
    splashColor: Colors.indigo,
    color: Colors.grey,
  );
}

Container boxSearch() {
  return Container(
    width: 300,
    height: 50,
    child: RaisedButton.icon(
      onPressed: () {
        print('Button Clicked.');
      },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      label: Text(
        '검색하기',
        style: TextStyle(color: Colors.white),
      ),
      icon: Icon(
        Icons.search,
        color: Colors.white,
      ),
      textColor: Colors.white,
      splashColor: Colors.red,
      color: Colors.lightBlue,
    ),
  );
}

