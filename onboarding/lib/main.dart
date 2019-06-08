import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  )
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF485563),
            Color(0xFF29323C),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          tileMode: TileMode.clamp,
          stops: [0.0,1.0],
        )
      ), 
    );
  }
}