import 'package:flutter/material.dart';
import 'package:travel_app/view/pages/detail_page.dart';
import 'package:travel_app/view/pages/home_page.dart';

import 'view/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailPage(),
      // home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
