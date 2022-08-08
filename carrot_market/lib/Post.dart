import 'package:flutter/material.dart';


class Post extends StatelessWidget {
  final String pTitle, pRegion, pPrice, pFavor;

  const Post({Key? key, this.pTitle = '제목', this.pRegion = '지역', this.pPrice = '가격', this.pFavor = '0'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration( border: Border.all(color: Colors.black,)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// 이미지파일
          Container(
            width: 70, height: 70,
            //color: Colors.red,
            child: Image.asset("assets/AI.jpg"),
          ),
          /// 내용
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
              //color: Colors.green,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(pTitle, style: TextStyle(fontWeight: FontWeight.w900),),
                    Text(pRegion),
                    Text(pPrice),
                  ],
                ),
              ),
            ),
          ),
          ///좋아요
          Container(
            //color: Colors.blue,
              alignment: Alignment.bottomCenter,
              child: Row(children: [Icon(Icons.favorite, size: 10,), Text(pFavor)],)
          ),
        ],
      ),
    );
  }
}