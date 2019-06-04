import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(600),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 15.0),
            blurRadius: 15.0,
          ),
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, -10.0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "登录",
              style: TextStyle(
                fontSize: ScreenUtil.getInstance().setSp(50),
                fontFamily: "Poppins-Bold",
                letterSpacing: 6,
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text(
              "工号",
              style: TextStyle(
                fontFamily: "Poppins-Medium",
                fontSize: ScreenUtil.getInstance().setSp(36),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "输入您的工号",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0),
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(50),
            ),
            Text(
              "密码",
              style: TextStyle(
                fontFamily: "Poppins-Medium",
                fontSize: ScreenUtil.getInstance().setSp(36),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "输入您的密码",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0),
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "忘记密码？",
                  style: TextStyle(
                      color: Colors.blue,
                      fontFamily: "Poppins-Medium",
                      fontSize: ScreenUtil.getInstance().setSp(32)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
