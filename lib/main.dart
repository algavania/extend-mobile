import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing/ui/styles.dart';

import 'ui/views/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bootcamp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Styles.primaryBlue),
        useMaterial3: false,
        primaryColor: Styles.primaryBlue,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.plusJakartaSans(
              fontSize: 95, fontWeight: FontWeight.w300, letterSpacing: -1.5),
          displayMedium: GoogleFonts.plusJakartaSans(
              fontSize: 59, fontWeight: FontWeight.w300, letterSpacing: -0.5),
          displaySmall: GoogleFonts.plusJakartaSans(
              fontSize: 48, fontWeight: FontWeight.w400),
          headlineMedium: GoogleFonts.plusJakartaSans(
              fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          headlineSmall: GoogleFonts.plusJakartaSans(
              fontSize: 24, fontWeight: FontWeight.w400),
          titleLarge: GoogleFonts.plusJakartaSans(
              fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 0.15),
          titleMedium: GoogleFonts.plusJakartaSans(
              fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 0.15),
          titleSmall: GoogleFonts.plusJakartaSans(
              fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 0.1),
          bodyLarge: GoogleFonts.plusJakartaSans(
              fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
          bodyMedium: GoogleFonts.plusJakartaSans(
              fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          labelLarge: GoogleFonts.plusJakartaSans(
              fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
          bodySmall: GoogleFonts.plusJakartaSans(
              fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
          labelSmall: GoogleFonts.plusJakartaSans(
              fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: GoogleFonts.plusJakartaSans(fontSize: 14, fontWeight: FontWeight.bold),
            backgroundColor: Styles.primaryBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            elevation: 0,
            minimumSize: Size(MediaQuery.of(context).size.width, 45)
          )
        )
      ),
      home: const LoginPage(),
    );
  }
}
