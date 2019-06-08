import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
      width: ScreenUtil().setWidth(808),
      height: ScreenUtil().setHeight(200),
      decoration: BoxDecoration(
          color: Colors.blue[300],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0))),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: ScreenUtil().setHeight(100),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: ScreenUtil().setWidth(220),),
              Text(
                "手环状态：",
                style: TextStyle(fontSize: ScreenUtil().setSp(45)),
              ),
              Text(
                "已连接",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(45), color: Colors.green[800]),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(100),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.refresh,color: Colors.white,)),
            ],
          ),
        ],
      ),
    );
  }
}
