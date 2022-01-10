import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:submission_pemula/screens/home_page.dart';
import 'package:submission_pemula/screens/main_page.dart';

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
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.nunito().fontFamily,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF54B175),
          unselectedItemColor: Color(0xFFAEAEB2),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
        ),
      ),
      home: const MainPage(),
    );
  }
}