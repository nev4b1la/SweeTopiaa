import 'package:flutter/material.dart';
import 'package:online_shop/pages/homePage.dart';
import 'package:online_shop/pages/itemPage.dart';
import 'package:online_shop/pages/movieList.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/home",
      routes: {
        '/home': (context) => homePage(),
        '/item': (context) => itemPage(),
        '/movie': (context) => Movielist(),
      },
      title: 'Sweetopia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    ),
  );
}
