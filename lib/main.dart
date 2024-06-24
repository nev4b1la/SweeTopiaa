import 'package:flutter/material.dart';
import 'package:online_shop/pages/homePage.dart';
import 'package:online_shop/pages/introPage.dart';
import 'package:online_shop/pages/itemPage.dart';
import 'package:online_shop/pages/movie/movieList.dart';
import 'package:online_shop/pages/login/registerPage.dart';
import 'package:online_shop/pages/login/signPage.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/intro",
      routes: {
        '/intro': (context) => introPage(),
        '/register': (context) => registerPage(),
        '/sign': (context) => signPage(),
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
