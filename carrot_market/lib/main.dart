import 'package:flutter/material.dart';
import 'Post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

          appBar: AppBar(
            title: Text("App Bar 입니다."),
            backgroundColor: Colors.black12,
          ),

          body: Container(
            margin: EdgeInsets.all(10),
            child: ListView(
              children: postList,
            ),
          ),

          bottomNavigationBar: BottomAppBar(
            child: Text("bottomNavigationBar 입니다."),
          ),
        ),

    );
  }
}


const List<Post> postList = [
  Post(pTitle: "신발 팝니다", pRegion: "고양시 화정동", pPrice: "20000", pFavor: "3",),
  Post(pTitle: "맥북 삽니다", pRegion: "서울시 마포구", pPrice: "300000", pFavor: "15",),
  Post(pTitle: "제목3", pRegion: "지역3", pPrice: "가격3", pFavor: "111",),
  Post(pTitle: "제목4", pRegion: "지역4", pPrice: "가격4", pFavor: "11111111111111111111111111111111111",),
  Post(),
  Post(),
  Post(),
  Post(),
  Post(),
  Post(),Post(),Post(),Post(),Post(),Post(),
];

