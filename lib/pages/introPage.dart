import 'package:flutter/material.dart';
import 'package:online_shop/pages/introPage2.dart';

class introPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                "lib/images/open1.png",
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => introPage2(),
                    ),
                  );
                },
                child: Image.asset(
                  "lib/images/logo.png",
                  height: 300,
                  width: 300,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                "lib/images/open2.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
