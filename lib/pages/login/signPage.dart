import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/pages/login/forgotPage.dart';
import 'package:online_shop/pages/introPage2.dart';
import 'package:online_shop/pages/login/registerPage.dart';

class signPage extends StatefulWidget {
  const signPage({Key? key});

  @override
  State<signPage> createState() => _signPageState();
}

class _signPageState extends State<signPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool passToogle = true;
  String validation = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffFD5D5D),
              Color(0xffFF8080),
              Color(0xffFFF7BC),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 20, left: 15, top: 10),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => introPage2(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => registerPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Register",
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sign In",
                              style: GoogleFonts.nunito(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "please log in to continue your culinary adventure",
                              style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Form(
                        child: Column(
                          children: [
                            SizedBox(height: 40),
                            Center(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 5,
                                      blurRadius: 20,
                                      offset: Offset(5, 5),
                                    )
                                  ],
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.name,
                                  controller: username,
                                  // validator: (value) {
                                  //   if (value == null || value.isEmpty) {
                                  //     return 'Enter Your Username';
                                  //   }
                                  //   return null;
                                  // },
                                  decoration: InputDecoration(
                                    hintText: "Username",
                                    hintStyle: GoogleFonts.nunito(
                                        color: Colors.grey, fontSize: 14),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              validation,
                              style: TextStyle(color: Colors.red),
                            ),
                            SizedBox(height: 30),
                            Container(
                              padding: EdgeInsets.all(10),
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    spreadRadius: 5,
                                    blurRadius: 20,
                                    offset: Offset(5, 5),
                                  )
                                ],
                              ),
                              child: TextField(
                                keyboardType: TextInputType.name,
                                controller: password,
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return 'Enter your Password';
                                //   }
                                //   return null;
                                // },
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: GoogleFonts.nunito(
                                      color: Colors.grey, fontSize: 14),
                                  border: InputBorder.none,
                                  suffix: InkWell(
                                    onTap: () {
                                      setState(
                                        () {
                                          passToogle = !passToogle;
                                        },
                                      );
                                    },
                                    child: Icon(passToogle
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              validation,
                              style: TextStyle(color: Colors.red),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => forgotPage()),
                                      );
                                    },
                                    child: Text(
                                      'Forgot Password?',
                                      style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 25),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Text(
                                  "Sign In",
                                  style: GoogleFonts.nunito(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 25),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                        color: Colors.black, width: 1),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "lib/images/search.png",
                                          height: 20,
                                          width: 20,
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          "Continue with Google",
                                          style: GoogleFonts.nunito(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(width: 24),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => introPage2(),
                                              ),
                                            );
                                          },
                                          child: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: Colors.black,
                                            size: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 25),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                        color: Colors.black, width: 1),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.apple,
                                          color: Colors.black,
                                          size: 35,
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          "Continue with Apple",
                                          style: GoogleFonts.nunito(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(width: 24),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => introPage2(),
                                              ),
                                            );
                                          },
                                          child: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: Colors.black,
                                            size: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                        color: Colors.black, width: 1),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "lib/images/facebook.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                        SizedBox(width: 15),
                                        Text(
                                          "Continue with Facebook",
                                          style: GoogleFonts.nunito(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                        Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
