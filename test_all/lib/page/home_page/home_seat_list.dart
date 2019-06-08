import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_all/model/seat_model.dart';

class HomeSeatList extends StatelessWidget {
  HomeSeatList(context);

  @override
  Widget build(BuildContext context) {
    List<Seat> list = [
      Seat(name: "abc", status: -1, number: 01),
      Seat(name: "bac", status: 0, number: 02),
      Seat(name: "cba", status: 1, number: 03),
      Seat(name: "abc", status: -1, number: 04),
      Seat(name: "bac", status: 0, number: 05),
      Seat(name: "cba", status: 1, number: 06),
      Seat(name: "abc", status: -1, number: 07),
      Seat(name: "bac", status: 0, number: 08),
      Seat(name: "cba", status: 1, number: 09),
      Seat(name: "abc", status: -1, number: 10),
      Seat(name: "bac", status: 0, number: 11),
      Seat(name: "cba", status: 1, number: 12),
      Seat(name: "abc", status: -1, number: 13),
      Seat(name: "bac", status: 0, number: 14),
      Seat(name: "cba", status: 1, number: 15),
    ];

    return Container(
      margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
      child: ListView.builder(
        padding: EdgeInsets.only(top: 10),
        itemCount: list.isEmpty ? 0 : list.length,
        itemBuilder: (context, index) {
          return _listItem(context, list[index]);
        },
      ),
    );
  }

  Widget _listItem(context, Seat s) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      padding: EdgeInsets.all(10),
      height: ScreenUtil().setHeight(160),
      width: ScreenUtil().setWidth(808),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [BoxShadow(blurRadius: 2.0,color: Colors.black12,offset: Offset(0, -8.0))]
      ),
      child: Container(
        child: InkWell(
          onTap: () {
            print(s.status);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "姓名：${s.name}",
                    style: TextStyle(fontSize: ScreenUtil().setSp(45)),
                  ),
                  Text("座号：${s.number}",
                      style: TextStyle(fontSize: ScreenUtil().setSp(35))),
                ],
              ),
              Icon(
                Icons.watch_later,
                size: ScreenUtil().setSp(
                  70,
                ),
                color: _getColor(s.status),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getColor(status) {
    if (status == 0) {
      return Colors.green;
    }
    if (status == 1) {
      return Colors.red;
    }
    return Colors.black26;
  }
}
