// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.pacificoTextTheme()),
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Container(
        child: Text(
          "Made this app for you",
          textAlign: TextAlign.center,
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            "assets/maki.jpg",
            height: screenHeight * 0.70,
            width: screenWidth,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: screenHeight * 0.43,
            child: Container(
              height: 50,
              width: screenWidth,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.white.withAlpha(150),
                  blurRadius: 60,
                  spreadRadius: 30,
                ),
              ]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.50),
            height: double.infinity,
            width: screenWidth,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                )),
            child: Column(
              children: [
                SizedBox(height: 40),
                Text(
                  "Will you",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Colors.black),
                ),
                // ignore: prefer_const_constructors
                SizedBox(height: 10),

                Text(
                  "be my",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Colors.black),
                ),
                // ignore: prefer_const_constructors
                SizedBox(height: 5),
                Text("Valentine?",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: Colors.black)),
                // ignore: prefer_const_constructors
                SizedBox(height: 5),

                GestureDetector(
                  onTap: () {
                    String message = "Hey,Love" ;
                    String phone = "+8801234567890";
                    String url =
                        "https://wa.me/$phone/?text=${Uri.parse(message)}";
                    launcher.launchUrl(Uri.parse(url));
                  },
                  child: Container(
                    width: screenWidth * 0.3,
                    padding: EdgeInsets.symmetric(vertical: 9),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xF4E40337),
                          Color.fromARGB(225, 243, 2, 23),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Text(
                      "Yes!",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: screenHeight * 0.45,
              child: Icon(Icons.favorite, color: Colors.red, size: 50)),
        ],
      ),
    );
  }
}
