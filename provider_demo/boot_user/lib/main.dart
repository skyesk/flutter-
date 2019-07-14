import 'package:flutter/material.dart';
import './FirstPage.dart';
import 'package:provider/provider.dart';
import './Counter.dart';

main() {
  runApp(ChangeNotifierProvider<Counter>.value(//1
    notifier: Counter(1),//2
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: FirstPage(),
    );
  }
}