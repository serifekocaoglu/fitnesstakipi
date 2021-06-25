import 'package:flutter/material.dart';


import 'pages/Anasayfa.dart';
import 'pages/Kalori_bölümü/calori.dart';
import 'pages/Yemek_bölümü/yemekler.dart';
import 'pages/kalp_atışı/kalp_atışı.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final pages = <String, WidgetBuilder> {
    MainPage.tag: (context)=>MainPage(),
    CaloriesPage.tag: (context)=>CaloriesPage(),
    MealsPage.tag: (context)=>MealsPage(),
    HeartRatePage.tag: (context)=>HeartRatePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Oswald',
      ),
      home: MainPage(),
      routes: pages,
    );
  }
}