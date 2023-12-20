import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing/ui/app_theme_data.dart';
import 'package:testing/ui/styles.dart';
import 'package:sizer/sizer.dart';
import 'package:testing/ui/views/on_boarding_page.dart';

import 'ui/views/home_page.dart';
import 'ui/views/login_page.dart';
import 'ui/views/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (_, __, ___) {
        return MaterialApp(
          title: 'Bootcamp',
          debugShowCheckedModeBanner: false,
          theme: AppThemeData().getThemeData(context),
          home: const LoginPage(),
        );
      }
    );
  }
}
