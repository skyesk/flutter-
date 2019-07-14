import 'package:flutter/material.dart';
import './first_page.dart';
import './second_page.dart';
import './threh_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          FirstPage(),
          SecondPage(),
          ThreadPage(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.green,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              text: "首页",
              icon: new Icon(Icons.home),
            ),
            new Tab(
              text: "列表",
              icon: new Icon(Icons.list),
            ),
            new Tab(
              text: "信息",
              icon: new Icon(Icons.message),
            ),
          ],
        ),
      ),
    );
  }
}
