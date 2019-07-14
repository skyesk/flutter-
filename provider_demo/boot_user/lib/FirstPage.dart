import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './SecondPage.dart';
import './Counter.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first page"),
        actions: <Widget>[
          FlatButton(
            child: Text(
              "next page",
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondPage();
                  }))
                },
          ),
        ],
      ),
      body: Center(
        child: Text(
          "${Provider.of<Counter>(context).count}",
          style: TextStyle(fontSize: 59),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Provider.of<Counter>(context).add();
        },
      ),
    );
  }
}
