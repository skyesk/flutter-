import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:test_all/page/home_page.dart';
import 'package:test_all/widget/CustomIcons.dart';
import 'package:test_all/widget/FormCard.dart';
import 'package:test_all/widget/SocialIcon.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isSelected = false;

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  Widget radioButton(bool isSelected) => Container(
        width: 16.0,
        height: 16.0,
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2.0, color: Colors.black)),
        child: isSelected
            ? Container(
                width: double.infinity,
                height: double.infinity,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              )
            : Container(),
      );

  Widget horizontalLine() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: ScreenUtil.getInstance().setWidth(120),
          height: 1.0,
          color: Colors.black26.withOpacity(.2),
        ),
      );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 828, height: 1792, allowFontScaling: true);

    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: Image.network(
                    "http://pic37.nipic.com/20140113/8800276_184927469000_2.png"),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "HI-Watch",
                        style: TextStyle(
                          fontFamily: "Poppins-Bold",
                          fontSize: ScreenUtil().setSp(66),
                          color: Colors.white,
                          letterSpacing: 6,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(30),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "护士手持移动端系统",
                        style: TextStyle(
                          fontFamily: "Poppins-Bold",
                          fontSize: ScreenUtil().setSp(56),
                          color: Colors.white,
                          letterSpacing: 6,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(50),
                  ),
                  FormCard(),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 12.0,
                          ),
                          GestureDetector(
                            onTap: _radio,
                            child: radioButton(_isSelected),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("记住我",
                              style: TextStyle(
                                fontFamily: "Poppins-Medium",
                                fontSize: 12,
                              )),
                        ],
                      ),
                      InkWell(
                        child: Container(
                          width: ScreenUtil.getInstance().setWidth(330),
                          height: ScreenUtil.getInstance().setHeight(100),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xFF17ead9), Color(0xFF6078ea)]),
                            borderRadius: BorderRadius.circular(6.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF6078ea).withOpacity(.3),
                                offset: Offset(0.0, 8.0),
                                blurRadius: 8.0,
                              ),
                            ],
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => new HomePage()),
                                  );
                                },
                                child: Center(
                                  child: Text(
                                    "登录",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins-Bold",
                                        fontSize: 27,
                                        letterSpacing: 1.0),
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(60),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      horizontalLine(),
                      Text(
                        "其他方式紧急登陆",
                        style: TextStyle(
                            fontSize: 16.0, fontFamily: "Poppins-Medium"),
                      ),
                      horizontalLine(),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocialIcon(
                        colors: [
                          Color(0xFF102397),
                          Color(0xFF187adf),
                          Color(0xFF00eaf8),
                        ],
                        iconData: CustomIcons.qq,
                        onPressed: () {},
                      ),
                      SocialIcon(
                        colors: [
                          Color(0xFFff4f38),
                          Color(0xFFff355d),
                        ],
                        iconData: CustomIcons.wechat,
                        onPressed: () {},
                      ),
                      SocialIcon(
                        colors: [
                          Colors.green[100],
                          Colors.green[300],
                          Colors.green[500]
                        ],
                        iconData: CustomIcons.wechat,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
