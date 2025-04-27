import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ecommerce_hero/get_started_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NOIR Fashion',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        textTheme: GoogleFonts.montserratTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const GetStartedPage(),
    );
  }
}
