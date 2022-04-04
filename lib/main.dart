import 'package:flutter/material.dart';
import 'package:travel_plus/pages/get_started_page/get_started_page.dart';
import 'package:travel_plus/widgets/bottom_navigation_bar.dart';
import 'package:travel_plus/pages/home_page/home_page.dart';
import 'package:travel_plus/styles/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: GetStartedPage(),
      initialRoute: '/getstarted',
      routes: {
        '/getstarted': (context) => GetStartedPage(),
        '/home': (context) => const HomePage(),
        '/bottomNavigationBar': (context) => BottomNavigationBarWidget(),
      }
    );
  }
}
