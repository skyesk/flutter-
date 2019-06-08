import 'package:flutter/material.dart';
import 'page/login_page.dart';
import 'page/onboarding_page.dart';
import 'package:oktoast/oktoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: OnboardingPage(),
      ),
    );
  }
}
