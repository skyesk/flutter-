import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_all/page/home_page/home_seat_list.dart';

import 'home_page/home_title.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 828, height: 1792, allowFontScaling: true);
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        child: Column(
          children: <Widget>[
            HomeTitle(),
            // SizedBox(height: ScreenUtil().setHeight(10),),
            Expanded(child: HomeSeatList(context),)
            // 
          ],
        ),
      )
    );
  }
}