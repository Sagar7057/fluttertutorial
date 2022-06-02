// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:project/Pages/home_page.dart';
import 'package:project/Pages/login_page.dart';
import 'Pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        "/": (context) => const LoginPage(),
        "/login":(context) => const LoginPage(),
        "/home":(context) => const HomePage(),
      },

    );
  }
}